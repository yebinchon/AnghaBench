
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current_block; int num_blocks; scalar_t__ block_length; scalar_t__ next_blockbyte; scalar_t__ save_gap; scalar_t__ savetime; scalar_t__ was_writing; } ;
typedef TYPE_1__ IMG_TAPE_t ;


 int CassetteFlush (TYPE_1__*) ;
 scalar_t__ FALSE ;

void IMG_TAPE_Seek(IMG_TAPE_t *file, unsigned int position)
{
 if (file->was_writing) {
  CassetteFlush(file);
  file->was_writing = FALSE;
 }
 file->current_block = (int)position;
 if (file->current_block > file->num_blocks)
  file->current_block = file->num_blocks;
 file->savetime = 0;
 file->save_gap = 0;
 file->next_blockbyte = 0;
 file->block_length = 0;
}
