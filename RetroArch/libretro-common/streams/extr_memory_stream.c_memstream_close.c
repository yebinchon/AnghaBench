
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int max_ptr; scalar_t__ writing; } ;
typedef TYPE_1__ memstream_t ;


 int free (TYPE_1__*) ;
 int last_file_size ;

void memstream_close(memstream_t *stream)
{
   if (!stream)
      return;

   last_file_size = stream->writing ? stream->max_ptr : stream->size;
   free(stream);
}
