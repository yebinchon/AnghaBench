
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {scalar_t__ type; int state; TYPE_2__* chunk; struct IDAT* idat; int image_digits; int image_bytes; } ;
struct IDAT_list {scalar_t__ count; scalar_t__ length; int * lengths; } ;
struct IDAT {scalar_t__ idat_index; scalar_t__ idat_count; TYPE_1__* idat_cur; int idat_length; TYPE_1__* idat_list_head; struct IDAT_list* idat_list_tail; } ;
struct TYPE_4__ {int chunk_length; int uncompressed_digits; int uncompressed_bytes; } ;
struct TYPE_3__ {int * lengths; } ;


 struct IDAT_list* IDAT_list_extend (struct IDAT_list*) ;
 int LIBPNG_ERROR_CODE ;
 int READ_ERROR_CODE ;
 int STATE_IDAT ;
 int ZLIB_ERROR_CODE ;
 int assert (int) ;
 scalar_t__ png_IDAT ;
 int rechunk_length (struct IDAT*,int) ;
 int setpos (TYPE_2__*) ;
 int stop (struct file*,int ,char*) ;
 int type_message (struct file*,scalar_t__,char*) ;
 int uarb_cmp (int ,int ,int ,int ) ;
 scalar_t__ zlib_check (struct file*,int ) ;

__attribute__((used)) static int
process_IDAT(struct file *file)
{
   struct IDAT_list *list;

   assert(file->idat != ((void*)0) && file->chunk != ((void*)0));
   list = file->idat->idat_list_tail;

   if (list->count == list->length)
   {
      list = IDAT_list_extend(list);

      if (list == ((void*)0))
         stop(file, READ_ERROR_CODE, "out of memory");


      list->count = 0;
      file->idat->idat_list_tail = list;
   }


   list->lengths[(list->count)++] = file->chunk->chunk_length;




   if (file->type == png_IDAT)
      return 0;






   setpos(file->chunk);

   if (zlib_check(file, 0))
   {
      struct IDAT *idat;
      int cmp;




      cmp = uarb_cmp(file->image_bytes, file->image_digits,
         file->chunk->uncompressed_bytes, file->chunk->uncompressed_digits);

      if (cmp < 0)
         type_message(file, png_IDAT, "extra uncompressed data");

      else if (cmp > 0)
         stop(file, LIBPNG_ERROR_CODE, "IDAT: uncompressed data too small");





      setpos(file->chunk);

      idat = file->idat;
      idat->idat_cur = idat->idat_list_head;
      idat->idat_length = idat->idat_cur->lengths[0];
      idat->idat_count = 0;
      idat->idat_index = 0;


      file->chunk->chunk_length = rechunk_length(idat, 1 );


      file->state = STATE_IDAT;

      return 1;
   }

   else
      stop(file, ZLIB_ERROR_CODE, "could not uncompress IDAT");
}
