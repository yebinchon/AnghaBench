
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ savetime; int num_blocks; int current_block; scalar_t__ was_writing; scalar_t__ block_length; scalar_t__ next_blockbyte; scalar_t__ save_gap; } ;
typedef TYPE_1__ IMG_TAPE_t ;


 scalar_t__ TRUE ;

void IMG_TAPE_WriteAdvance(IMG_TAPE_t *file, unsigned int num_ticks)
{
 if (!file->was_writing) {
  file->savetime = 0;
  file->save_gap = 0;
  file->next_blockbyte = 0;
  file->block_length = 0;
  file->was_writing = TRUE;

  file->current_block = file->num_blocks;
 }
 file->savetime += num_ticks;
}
