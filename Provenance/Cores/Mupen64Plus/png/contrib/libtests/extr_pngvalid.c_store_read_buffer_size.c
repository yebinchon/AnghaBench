
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* current; int * next; } ;
typedef TYPE_2__ png_store ;
struct TYPE_4__ {size_t datacount; int data; } ;


 size_t STORE_BUFFER_SIZE ;

__attribute__((used)) static size_t
store_read_buffer_size(png_store *ps)
{

   if (ps->next != &ps->current->data)
      return STORE_BUFFER_SIZE;

   return ps->current->datacount;
}
