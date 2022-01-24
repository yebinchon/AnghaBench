#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct file {int type; int length; int crc; int /*<<< orphan*/  data_pos; struct chunk* chunk; void* interlace_method; void* filter_method; void* compression_method; void* color_type; void* bit_depth; void* height; void* width; int /*<<< orphan*/  (* alloc ) (struct file*,int) ;int /*<<< orphan*/ * idat; TYPE_1__* global; int /*<<< orphan*/  status_code; } ;
struct chunk {int const chunk_type; int chunk_length; scalar_t__ rewrite_offset; scalar_t__ rewrite_length; } ;
typedef  int png_uint_32 ;
struct TYPE_2__ {int verbose; scalar_t__ skip; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRC_ERROR ; 
 scalar_t__ FUNC0 (int const) ; 
 int /*<<< orphan*/  READ_ERROR_CODE ; 
 scalar_t__ SKIP_BAD_CRC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct chunk**) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
#define  png_IDAT 132 
#define  png_IHDR 131 
#define  png_iCCP 130 
#define  png_iTXt 129 
#define  png_zTXt 128 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 int /*<<< orphan*/  FUNC9 (struct file*) ; 
 int /*<<< orphan*/  FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 void* FUNC12 (struct file*) ; 
 void* FUNC13 (struct file*) ; 
 int /*<<< orphan*/  FUNC14 (struct chunk*) ; 
 scalar_t__ FUNC15 (TYPE_1__*,int const) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (struct file*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct file*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct file*,int const,char*) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22(struct file *file, png_uint_32 file_crc, png_uint_32 next_length,
   png_uint_32 next_type)
   /* Called when the chunk data has been read, next_length and next_type
    * will be set for the next chunk (or 0 if this is IEND).
    *
    * When this routine returns, chunk_length and chunk_type will be set for the
    * next chunk to write because if a chunk is skipped this return calls back
    * to read_chunk.
    */
{
   const png_uint_32 type = file->type;

   if (file->global->verbose > 1)
   {
      FUNC6("  ", stderr);
      FUNC21(file->type, stderr);
      FUNC5(stderr, " %lu 0x%.8x 0x%.8x\n", (unsigned long)file->length,
         file->crc ^ 0xffffffff, file_crc);
   }

   /* The basic structure seems correct but the CRC may not match, in this
    * case assume that it is simply a bad CRC, either wrongly calculated or
    * because of damaged stream data.
    */
   if ((file->crc ^ 0xffffffff) != file_crc)
   {
      /* The behavior is set by the 'skip' setting; if it is anything other
       * than SKIP_BAD_CRC ignore the bad CRC and return the chunk, with a
       * corrected CRC and possibly processed, to libpng.  Otherwise skip the
       * chunk, which will result in a fatal error if the chunk is critical.
       */
      file->status_code |= CRC_ERROR;

      /* Ignore the bad CRC  */
      if (file->global->skip != SKIP_BAD_CRC)
         FUNC20(file, type, "bad CRC");

      /* This will cause an IEND with a bad CRC to stop */
      else if (FUNC0(type))
         FUNC16(file, READ_ERROR_CODE, "bad CRC in critical chunk");

      else
      {
         FUNC20(file, type, "skipped: bad CRC");

         /* NOTE: this cannot be reached for IEND because it is critical. */
         goto skip_chunk;
      }
   }

   /* Check for other 'skip' cases and handle these; these only apply to
    * ancillary chunks (and not tRNS, which should probably have been a critical
    * chunk.)
    */
   if (FUNC15(file->global, type))
      goto skip_chunk;

   /* The chunk may still be skipped if problems are detected in the LZ data,
    * however the LZ data check requires a chunk.  Handle this by instantiating
    * a chunk unless an IDAT is already instantiated (IDAT control structures
    * instantiate their own chunk.)
    */
   if (type != png_IDAT)
      file->alloc(file, 0/*chunk*/);

   else if (file->idat == NULL)
      file->alloc(file, 1/*IDAT*/);

   else
   {
      /* The chunk length must be updated for process_IDAT */
      FUNC1(file->chunk != NULL);
      FUNC1(file->chunk->chunk_type == png_IDAT);
      file->chunk->chunk_length = file->length;
   }

   /* Record the 'next' information too, now that the original values for
    * this chunk have been copied.  Notice that the IDAT chunks only make a
    * copy of the position of the first chunk, this is fine - process_IDAT does
    * not need the position of this chunk.
    */
   file->length = next_length;
   file->type = next_type;
   FUNC7(file);

   /* Do per-type processing, note that if this code does not return from the
    * function the chunk will be skipped.  The rewrite is cancelled here so that
    * it can be set in the per-chunk processing.
    */
   file->chunk->rewrite_length = 0;
   file->chunk->rewrite_offset = 0;
   switch (type)
   {
      default:
         return;

      case png_IHDR:
         /* Read this now and update the control structure with the information
          * it contains.  The header is validated completely to ensure this is a
          * PNG.
          */
         {
            struct chunk *chunk = file->chunk;

            if (chunk->chunk_length != 13)
               FUNC17(file, "IHDR length");

            /* Read all the IHDR information and validate it. */
            FUNC14(chunk);
            file->width = FUNC12(file);
            file->height = FUNC12(file);
            file->bit_depth = FUNC13(file);
            file->color_type = FUNC13(file);
            file->compression_method = FUNC13(file);
            file->filter_method = FUNC13(file);
            file->interlace_method = FUNC13(file);

            /* This validates all the fields, and calls stop_invalid if
             * there is a problem.
             */
            FUNC2(file);
         }
         return;

         /* Ancillary chunks that require further processing: */
      case png_zTXt: case png_iCCP:
         if (FUNC10(file))
            return;
         FUNC3(&file->chunk);
         FUNC4(file, &file->data_pos);
         break;

      case png_iTXt:
         if (FUNC9(file))
            return;
         FUNC3(&file->chunk);
         FUNC4(file, &file->data_pos);
         break;

      case png_IDAT:
         if (FUNC8(file))
            return;
         /* First pass: */
         FUNC1(next_type == png_IDAT);
         break;
   }

   /* Control reaches this point if the chunk must be skipped.  For chunks other
    * than IDAT this means that the zlib compressed data is fatally damanged and
    * the chunk will not be passed to libpng.  For IDAT it means that the end of
    * the IDAT stream has not yet been reached and we must handle the next
    * (IDAT) chunk.  If the LZ data in an IDAT stream cannot be read 'stop' must
    * be used to halt parsing of the PNG.
    */
   FUNC11(file);
   return;

   /* This is the generic code to skip the current chunk; simply jump to the
    * next one.
    */
skip_chunk:
   file->length = next_length;
   file->type = next_type;
   FUNC7(file);
   FUNC11(file);
}