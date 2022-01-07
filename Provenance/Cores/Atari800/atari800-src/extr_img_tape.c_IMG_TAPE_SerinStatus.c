
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int next_blockbyte; int* block_baudrates; size_t current_block; int* buffer; scalar_t__ isCAS; scalar_t__ was_writing; } ;
typedef TYPE_1__ IMG_TAPE_t ;



int IMG_TAPE_SerinStatus(IMG_TAPE_t *file, int event_time_left)
{
 int bit = 0;

 if (file->was_writing || file->next_blockbyte == 0)
  return 1;

 if (event_time_left <
  10 * 1789790 / (file->isCAS ? file->block_baudrates[file->current_block] : 600) - 1) {
  bit = event_time_left / (1789790 / (file->isCAS ? file->block_baudrates[file->current_block] : 600));
 }
 else {
  bit = 0;
 }


 if ((bit <= 0) || (bit > 9))
  return 1;


 if (bit == 9)
  return 0;


 return (file->buffer[file->next_blockbyte - 1] >> (8 - bit)) & 1;
}
