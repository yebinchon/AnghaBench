
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_5__ {int was_writing; scalar_t__ next_blockbyte; scalar_t__ block_length; int* block_baudrates; size_t current_block; scalar_t__ isCAS; int * buffer; } ;
typedef TYPE_1__ IMG_TAPE_t ;


 int CassetteFlush (TYPE_1__*) ;
 int FALSE ;
 int ReadNextRecord (TYPE_1__*,int*) ;
 int TRUE ;

int IMG_TAPE_Read(IMG_TAPE_t *file, unsigned int *duration, int *is_gap, UBYTE *byte)
{
 int gap;
 if (file->was_writing) {
  CassetteFlush(file);
  file->was_writing = FALSE;
 }
 if (file->next_blockbyte >= file->block_length) {


  if (!ReadNextRecord(file, &gap))
   return FALSE;
  file->next_blockbyte = 0;
  if (gap > 0) {

   *duration = gap * 1789 + gap * 790 / 1000;
   *is_gap = TRUE;
   return TRUE;
  }
 }
 *byte = file->buffer[file->next_blockbyte++];
 *is_gap = FALSE;

 *duration = 10 * 1789790 / (file->isCAS ? file->block_baudrates[file->current_block] : 600);
 return TRUE;
}
