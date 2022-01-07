
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int length_lo; int length_hi; int aux_lo; int aux_hi; int identifier; } ;
struct TYPE_5__ {size_t num_blocks; int block_length; int save_gap; int current_block; int file; TYPE_2__* buffer; scalar_t__* block_offsets; int * block_baudrates; int isCAS; } ;
typedef TYPE_1__ IMG_TAPE_t ;
typedef TYPE_2__ CAS_Header ;


 int DEFAULT_BAUDRATE ;
 int FALSE ;
 int SEEK_SET ;
 int Util_strncpy (int ,char*,int) ;
 scalar_t__ fseek (int ,scalar_t__,int ) ;
 int fwrite (TYPE_2__*,int,int,int ) ;

__attribute__((used)) static int WriteRecord(IMG_TAPE_t *file)
{
 CAS_Header header;
 int result;



 if (!file->isCAS)
  return FALSE;

 if (fseek(file->file, file->block_offsets[file->num_blocks], SEEK_SET) != 0)
  return FALSE;

 Util_strncpy(header.identifier, "data", 4);
 header.length_lo = file->block_length & 0xFF;
 header.length_hi = (file->block_length >> 8) & 0xFF;
 header.aux_lo = file->save_gap & 0xff;
 header.aux_hi = (file->save_gap >> 8) & 0xff;
 if (fwrite(&header, 1, 8, file->file) != 8)
  return FALSE;

 file->block_baudrates[file->num_blocks] = DEFAULT_BAUDRATE;
 file->num_blocks++;
 file->block_offsets[file->num_blocks] = file->block_offsets[file->num_blocks - 1] + file->block_length + 8;
 file->current_block = file->num_blocks;

 result = fwrite(file->buffer, 1, file->block_length, file->file) == file->block_length;
 if (result) {
  file->save_gap = 0;
  file->block_length = 0;
 }
 return result;
}
