
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int length_lo; int length_hi; int aux_lo; int aux_hi; } ;
struct TYPE_5__ {int block_length; size_t current_block; size_t num_blocks; int* block_offsets; int* buffer; int file; scalar_t__ isCAS; } ;
typedef TYPE_1__ IMG_TAPE_t ;
typedef TYPE_2__ CAS_Header ;


 int EnlargeBuffer (TYPE_1__*,int) ;
 int FALSE ;
 int SEEK_SET ;
 int SIO_ChkSum (int*,int) ;
 int TRUE ;
 int fread (int*,int,int,int ) ;
 scalar_t__ fseek (int ,int,int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int ReadNextRecord(IMG_TAPE_t *file, int *gap)
{
 int length;



 if (file->block_length != 0) {

  file->block_length = 0;
  if (++file->current_block >= file->num_blocks)

   return FALSE;
 }

 if (file->isCAS) {
  CAS_Header header;


  if (fseek(file->file, file->block_offsets[file->current_block] + 4, SEEK_SET) != 0
      || fread(&header.length_lo, 1, 4, file->file) < 4)
   return FALSE;
  length = header.length_lo + (header.length_hi << 8);
  *gap = header.aux_lo + (header.aux_hi << 8);

  EnlargeBuffer(file, length);
  if (fread(file->buffer, 1, length, file->file) < length)
   return FALSE;
 }
 else {
  length = 132;

  *gap = (file->current_block == 0 ? 19200 : 260);
  file->buffer[0] = 0x55;
  file->buffer[1] = 0x55;
  if (file->current_block + 1 >= file->num_blocks) {

   file->buffer[2] = 0xfe;
   memset(file->buffer + 3, 0, 128);
  }
  else {
   int bytes;
   if (fseek(file->file, file->current_block * 128, SEEK_SET) != 0
       || (bytes = fread(file->buffer + 3, 1, 128, file->file)) == 0)
    return FALSE;
   if (bytes < 128) {
    file->buffer[2] = 0xfa;
    memset(file->buffer + 3 + bytes, 0, 127 - bytes);
    file->buffer[0x82] = bytes;
   }
   else
    file->buffer[2] = 0xfc;
  }
  file->buffer[0x83] = SIO_ChkSum(file->buffer, 0x83);
 }
 file->block_length = length;
 return TRUE;
}
