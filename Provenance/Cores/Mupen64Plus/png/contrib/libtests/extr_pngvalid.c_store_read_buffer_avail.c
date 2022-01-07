
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* prev; } ;
typedef TYPE_2__ png_store_buffer ;
struct TYPE_7__ {size_t readpos; int pread; TYPE_2__* next; TYPE_1__* current; } ;
typedef TYPE_3__ png_store ;
struct TYPE_5__ {size_t datacount; TYPE_2__ data; } ;


 scalar_t__ STORE_BUFFER_SIZE ;
 int png_error (int ,char*) ;

__attribute__((used)) static size_t
store_read_buffer_avail(png_store *ps)
{
   if (ps->current != ((void*)0) && ps->next != ((void*)0))
   {
      png_store_buffer *next = &ps->current->data;
      size_t cbAvail = ps->current->datacount;

      while (next != ps->next && next != ((void*)0))
      {
         next = next->prev;
         cbAvail += STORE_BUFFER_SIZE;
      }

      if (next != ps->next)
         png_error(ps->pread, "buffer read error");

      if (cbAvail > ps->readpos)
         return cbAvail - ps->readpos;
   }

   return 0;
}
