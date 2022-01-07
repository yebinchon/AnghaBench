
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UWORD ;
struct TYPE_5__ {int save_gap; int block_length; int * buffer; scalar_t__ was_writing; scalar_t__ next_blockbyte; scalar_t__ savetime; } ;
typedef TYPE_1__ IMG_TAPE_t ;


 int EnlargeBuffer (TYPE_1__*,int) ;
 int MEMORY_CopyFromMem (int ,int *,int) ;
 int SIO_ChkSum (int *,int) ;
 scalar_t__ TRUE ;
 int WriteRecord (TYPE_1__*) ;

int IMG_TAPE_WriteFromMemory(IMG_TAPE_t *file, UWORD src_addr, int length, int gap)
{
 if (!file->was_writing) {
  file->savetime = 0;
  file->save_gap = 0;
  file->next_blockbyte = 0;
  file->block_length = 0;
  file->was_writing = TRUE;
 }
 EnlargeBuffer(file, length + 1);

 MEMORY_CopyFromMem(src_addr, file->buffer, length);

 file->buffer[length] = SIO_ChkSum(file->buffer, length);
 file->save_gap = gap;
 file->block_length = length + 1;
 return WriteRecord(file);
}
