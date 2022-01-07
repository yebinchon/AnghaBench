
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chunk {int chunk_data_pos; TYPE_1__* file; } ;
struct TYPE_2__ {int read_count; } ;


 int file_setpos (TYPE_1__*,int *) ;

__attribute__((used)) static void
setpos(struct chunk *chunk)




{
   chunk->file->read_count = 8;
   file_setpos(chunk->file, &chunk->chunk_data_pos);
}
