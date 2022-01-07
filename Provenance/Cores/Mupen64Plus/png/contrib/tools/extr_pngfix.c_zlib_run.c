
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zlib {scalar_t__ extra_bytes; scalar_t__ rewrite_offset; struct chunk* chunk; TYPE_2__* idat; TYPE_1__* global; int file; } ;
struct chunk {scalar_t__ chunk_length; } ;
struct IDAT_list {unsigned int count; scalar_t__* lengths; struct IDAT_list* next; } ;
struct TYPE_4__ {struct IDAT_list* idat_list_tail; struct IDAT_list* idat_list_head; } ;
struct TYPE_3__ {int errors; } ;




 int assert (int) ;
 int chunk_message (struct chunk*,char*) ;
 int skip_12 (int ) ;
 int zlib_advance (struct zlib*,scalar_t__) ;

__attribute__((used)) static int
zlib_run(struct zlib *zlib)

{







   zlib->extra_bytes = 0;

   if (zlib->idat != ((void*)0))
   {
      struct IDAT_list *list = zlib->idat->idat_list_head;
      struct IDAT_list *last = zlib->idat->idat_list_tail;
      int skip = 0;




      assert(zlib->rewrite_offset == 0);




      for (;;)
      {
         const unsigned int count = list->count;
         unsigned int i;

         for (i = 0; i<count; ++i)
         {
            int rc;

            if (skip > 0)
               skip_12(zlib->file);

            skip = 12;

            rc = zlib_advance(zlib, list->lengths[i]);

            switch (rc)
            {
               case 129:
                  break;

               case 128:




                  if (zlib->global->errors && zlib->extra_bytes == 0)
                  {
                     struct IDAT_list *check = list;
                     int j = i+1, jcount = count;

                     for (;;)
                     {
                        for (; j<jcount; ++j)
                           if (check->lengths[j] > 0)
                           {
                              chunk_message(zlib->chunk,
                                 "extra compressed data");
                              goto end_check;
                           }

                        if (check == last)
                           break;

                        check = check->next;
                        jcount = check->count;
                        j = 0;
                     }
                  }

               end_check:



                  list->lengths[i] -= zlib->extra_bytes;
                  list->count = i+1;
                  zlib->idat->idat_list_tail = list;


               default:
                  return rc;
            }
         }


         if (list == last)
            return 129;

         list = list->next;
      }
   }

   else
   {
      struct chunk *chunk = zlib->chunk;
      int rc;

      assert(zlib->rewrite_offset < chunk->chunk_length);

      rc = zlib_advance(zlib, chunk->chunk_length - zlib->rewrite_offset);






      chunk->chunk_length -= zlib->extra_bytes;
      return rc;
   }
}
