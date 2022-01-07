
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* prev; } ;
typedef TYPE_2__ png_store_buffer ;
struct TYPE_7__ {int pread; scalar_t__ readpos; TYPE_2__* next; TYPE_1__* current; } ;
typedef TYPE_3__ png_store ;
struct TYPE_5__ {TYPE_2__ data; } ;


 int png_error (int ,char*) ;

__attribute__((used)) static int
store_read_buffer_next(png_store *ps)
{
   png_store_buffer *pbOld = ps->next;
   png_store_buffer *pbNew = &ps->current->data;
   if (pbOld != pbNew)
   {
      while (pbNew != ((void*)0) && pbNew->prev != pbOld)
         pbNew = pbNew->prev;

      if (pbNew != ((void*)0))
      {
         ps->next = pbNew;
         ps->readpos = 0;
         return 1;
      }

      png_error(ps->pread, "buffer lost");
   }

   return 0;
}
