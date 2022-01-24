#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  temp ;
typedef  int /*<<< orphan*/  infile ;
struct TYPE_28__ {int /*<<< orphan*/  file; int /*<<< orphan*/  s; } ;
struct TYPE_27__ {int /*<<< orphan*/  s; int /*<<< orphan*/ * realStream; } ;
struct TYPE_23__ {scalar_t__ NumFiles; TYPE_4__* Files; scalar_t__ NumFolders; scalar_t__ NumPackStreams; int /*<<< orphan*/ * Folders; int /*<<< orphan*/ * PackCRCs; int /*<<< orphan*/ * PackCRCsDefined; int /*<<< orphan*/ * PackSizes; } ;
struct TYPE_22__ {scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct TYPE_26__ {TYPE_2__ db; TYPE_1__ FileNames; int /*<<< orphan*/ * FileNameOffsets; int /*<<< orphan*/ * FileIndexToFolderIndexMap; int /*<<< orphan*/ * FolderStartFileIndex; int /*<<< orphan*/ * PackStreamStartPositions; int /*<<< orphan*/ * FolderStartPackStreamIndex; scalar_t__ dataPos; scalar_t__ startPosAfterHeader; } ;
struct TYPE_25__ {scalar_t__ IsDir; } ;
struct TYPE_24__ {void* Free; int /*<<< orphan*/  Alloc; } ;
typedef  scalar_t__ SRes ;
typedef  TYPE_3__ ISzAlloc ;
typedef  TYPE_4__ CSzFileItem ;
typedef  TYPE_5__ CSzArEx ;
typedef  TYPE_6__ CLookToRead ;
typedef  TYPE_7__ CFileInStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int PATH_MAX_LENGTH ; 
 scalar_t__ SZ_ERROR_FAIL ; 
 scalar_t__ SZ_ERROR_MEM ; 
 scalar_t__ SZ_OK ; 
 scalar_t__ FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ **,size_t*,size_t*,size_t*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_3__*) ; 
 size_t FUNC10 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,void const*,long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (long) ; 
 int /*<<< orphan*/  FUNC16 (void*,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  sevenzip_stream_alloc_impl ; 
 int /*<<< orphan*/  sevenzip_stream_alloc_tmp_impl ; 
 void* sevenzip_stream_free_impl ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (char*,char const*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC20 (char const*) ; 

__attribute__((used)) static int FUNC21(
      const char *path,
      const char *needle, void **buf,
      const char *optional_outfile)
{
   CFileInStream archiveStream;
   CLookToRead lookStream;
   ISzAlloc allocImp;
   ISzAlloc allocTempImp;
   CSzArEx db;
   uint8_t *output      = 0;
   long outsize         = -1;

   /*These are the allocation routines.
    * Currently using the non-standard 7zip choices. */
   allocImp.Alloc       = sevenzip_stream_alloc_impl;
   allocImp.Free        = sevenzip_stream_free_impl;
   allocTempImp.Alloc   = sevenzip_stream_alloc_tmp_impl;
   allocTempImp.Free    = sevenzip_stream_free_impl;

#if defined(_WIN32) && defined(USE_WINDOWS_FILE) && !defined(LEGACY_WIN32)
   if (!string_is_empty(path))
   {
      wchar_t *pathW = utf8_to_utf16_string_alloc(path);

      if (pathW)
      {
         /* Could not open 7zip archive? */
         if (InFile_OpenW(&archiveStream.file, pathW))
         {
            free(pathW);
            return -1;
         }

         free(pathW);
      }
   }
#else
   /* Could not open 7zip archive? */
   if (FUNC4(&archiveStream.file, path))
      return -1;
#endif

   FUNC1(&archiveStream);
   FUNC6(&lookStream, false);
   lookStream.realStream = &archiveStream.s;
   FUNC7(&lookStream);
   FUNC0();

   db.db.PackSizes               = NULL;
   db.db.PackCRCsDefined         = NULL;
   db.db.PackCRCs                = NULL;
   db.db.Folders                 = NULL;
   db.db.Files                   = NULL;
   db.db.NumPackStreams          = 0;
   db.db.NumFolders              = 0;
   db.db.NumFiles                = 0;
   db.startPosAfterHeader        = 0;
   db.dataPos                    = 0;
   db.FolderStartPackStreamIndex = NULL;
   db.PackStreamStartPositions   = NULL;
   db.FolderStartFileIndex       = NULL;
   db.FileIndexToFolderIndexMap  = NULL;
   db.FileNameOffsets            = NULL;
   db.FileNames.data             = NULL;
   db.FileNames.size             = 0;

   FUNC11(&db);

   if (FUNC12(&db, &lookStream.s, &allocImp, &allocTempImp) == SZ_OK)
   {
      uint32_t i;
      bool file_found      = false;
      uint16_t *temp       = NULL;
      size_t temp_size     = 0;
      uint32_t block_index = 0xFFFFFFFF;
      SRes res             = SZ_OK;

      for (i = 0; i < db.db.NumFiles; i++)
      {
         size_t len;
         char infile[PATH_MAX_LENGTH];
         size_t offset                = 0;
         size_t outSizeProcessed      = 0;
         const CSzFileItem    *f      = db.db.Files + i;

         /* We skip over everything which is not a directory.
          * FIXME: Why continue then if f->IsDir is true?*/
         if (f->IsDir)
            continue;

         len = FUNC10(&db, i, NULL);

         if (len > temp_size)
         {
            if (temp)
               FUNC14(temp);
            temp_size = len;
            temp = (uint16_t *)FUNC15(temp_size * sizeof(temp[0]));

            if (temp == 0)
            {
               res = SZ_ERROR_MEM;
               break;
            }
         }

         FUNC10(&db, i, temp);
         res       = SZ_ERROR_FAIL;
         infile[0] = '\0';

         if (temp)
            res = FUNC19(temp, infile, sizeof(infile))
               ? SZ_OK : SZ_ERROR_FAIL;

         if (FUNC18(infile, needle))
         {
            size_t output_size   = 0;

            /* C LZMA SDK does not support chunked extraction - see here:
             * sourceforge.net/p/sevenzip/discussion/45798/thread/6fb59aaf/
             * */
            file_found = true;
            res = FUNC8(&db, &lookStream.s, i, &block_index,
                  &output, &output_size, &offset, &outSizeProcessed,
                  &allocImp, &allocTempImp);

            if (res != SZ_OK)
               break; /* This goes to the error section. */

            outsize = outSizeProcessed;

            if (optional_outfile != NULL)
            {
               const void *ptr = (const void*)(output + offset);

               if (!FUNC13(optional_outfile, ptr, outsize))
               {
                  res        = SZ_OK;
                  file_found = true;
                  outsize    = -1;
               }
            }
            else
            {
               /*We could either use the 7Zip allocated buffer,
                * or create our own and use it.
                * We would however need to realloc anyways, because RetroArch
                * expects a \0 at the end, therefore we allocate new,
                * copy and free the old one. */
               *buf = FUNC15(outsize + 1);
               ((char*)(*buf))[outsize] = '\0';
               FUNC16(*buf,output + offset,outsize);
            }
            break;
         }
      }

      if (temp)
         FUNC14(temp);
      FUNC3(&allocImp, output);

      if (!(file_found && res == SZ_OK))
      {
         /* Error handling
          *
          * Failed to open compressed file inside 7zip archive.
          */

         outsize    = -1;
      }
   }

   FUNC9(&db, &allocImp);
   FUNC2(&archiveStream.file);

   return (int)outsize;
}