#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int png_uint_32 ;
typedef  TYPE_1__* png_structrp ;
typedef  unsigned int png_size_t ;
struct TYPE_17__ {int depth; int nentries; TYPE_3__* entries; scalar_t__ name; } ;
typedef  TYPE_2__ png_sPLT_t ;
typedef  TYPE_3__* png_sPLT_entryp ;
typedef  int /*<<< orphan*/  png_sPLT_entry ;
typedef  int png_int_32 ;
typedef  int /*<<< orphan*/  png_inforp ;
typedef  scalar_t__ png_charp ;
typedef  scalar_t__* png_bytep ;
typedef  int png_alloc_size_t ;
struct TYPE_18__ {void* frequency; void* alpha; void* blue; void* green; void* red; } ;
struct TYPE_16__ {int user_chunk_cache_max; int mode; } ;

/* Variables and functions */
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_3__*) ; 
 void* FUNC6 (scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 scalar_t__* FUNC8 (TYPE_1__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 

void /* PRIVATE */
FUNC11(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
/* Note: this does not properly handle chunks that are > 64K under DOS */
{
   png_bytep entry_start, buffer;
   png_sPLT_t new_palette;
   png_sPLT_entryp pp;
   png_uint_32 data_length;
   int entry_size, i;
   png_uint_32 skip = 0;
   png_uint_32 dl;
   png_size_t max_dl;

   FUNC4(1, "in png_handle_sPLT");

#ifdef PNG_USER_LIMITS_SUPPORTED
   if (png_ptr->user_chunk_cache_max != 0)
   {
      if (png_ptr->user_chunk_cache_max == 1)
      {
         png_crc_finish(png_ptr, length);
         return;
      }

      if (--png_ptr->user_chunk_cache_max == 1)
      {
         png_warning(png_ptr, "No space in chunk cache for sPLT");
         png_crc_finish(png_ptr, length);
         return;
      }
   }
#endif

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      FUNC1(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & PNG_HAVE_IDAT) != 0)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "out of place");
      return;
   }

#ifdef PNG_MAX_MALLOC_64K
   if (length > 65535U)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "too large to fit in memory");
      return;
   }
#endif

   buffer = FUNC8(png_ptr, length+1, 2/*silent*/);
   if (buffer == NULL)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "out of memory");
      return;
   }


   /* WARNING: this may break if size_t is less than 32 bits; it is assumed
    * that the PNG_MAX_MALLOC_64K test is enabled in this case, but this is a
    * potential breakage point if the types in pngconf.h aren't exactly right.
    */
   FUNC3(png_ptr, buffer, length);

   if (FUNC2(png_ptr, skip) != 0)
      return;

   buffer[length] = 0;

   for (entry_start = buffer; *entry_start; entry_start++)
      /* Empty loop to find end of name */ ;

   ++entry_start;

   /* A sample depth should follow the separator, and we should be on it  */
   if (length < 2U || entry_start > buffer + (length - 2U))
   {
      FUNC10(png_ptr, "malformed sPLT chunk");
      return;
   }

   new_palette.depth = *entry_start++;
   entry_size = (new_palette.depth == 8 ? 6 : 10);
   /* This must fit in a png_uint_32 because it is derived from the original
    * chunk data length.
    */
   data_length = length - (png_uint_32)(entry_start - buffer);

   /* Integrity-check the data length */
   if ((data_length % (unsigned int)entry_size) != 0)
   {
      FUNC10(png_ptr, "sPLT chunk has bad length");
      return;
   }

   dl = (png_uint_32)(data_length / (unsigned int)entry_size);
   max_dl = PNG_SIZE_MAX / (sizeof (png_sPLT_entry));

   if (dl > max_dl)
   {
      FUNC10(png_ptr, "sPLT chunk too long");
      return;
   }

   new_palette.nentries = (png_int_32)(data_length / (unsigned int)entry_size);

   new_palette.entries = (png_sPLT_entryp)FUNC7(png_ptr,
       (png_alloc_size_t) new_palette.nentries * (sizeof (png_sPLT_entry)));

   if (new_palette.entries == NULL)
   {
      FUNC10(png_ptr, "sPLT chunk requires too much memory");
      return;
   }

#ifdef PNG_POINTER_INDEXING_SUPPORTED
   for (i = 0; i < new_palette.nentries; i++)
   {
      pp = new_palette.entries + i;

      if (new_palette.depth == 8)
      {
         pp->red = *entry_start++;
         pp->green = *entry_start++;
         pp->blue = *entry_start++;
         pp->alpha = *entry_start++;
      }

      else
      {
         pp->red   = png_get_uint_16(entry_start); entry_start += 2;
         pp->green = png_get_uint_16(entry_start); entry_start += 2;
         pp->blue  = png_get_uint_16(entry_start); entry_start += 2;
         pp->alpha = png_get_uint_16(entry_start); entry_start += 2;
      }

      pp->frequency = png_get_uint_16(entry_start); entry_start += 2;
   }
#else
   pp = new_palette.entries;

   for (i = 0; i < new_palette.nentries; i++)
   {

      if (new_palette.depth == 8)
      {
         pp[i].red   = *entry_start++;
         pp[i].green = *entry_start++;
         pp[i].blue  = *entry_start++;
         pp[i].alpha = *entry_start++;
      }

      else
      {
         pp[i].red   = FUNC6(entry_start); entry_start += 2;
         pp[i].green = FUNC6(entry_start); entry_start += 2;
         pp[i].blue  = FUNC6(entry_start); entry_start += 2;
         pp[i].alpha = FUNC6(entry_start); entry_start += 2;
      }

      pp[i].frequency = FUNC6(entry_start); entry_start += 2;
   }
#endif

   /* Discard all chunk data except the name and stash that */
   new_palette.name = (png_charp)buffer;

   FUNC9(png_ptr, info_ptr, &new_palette, 1);

   FUNC5(png_ptr, new_palette.entries);
}