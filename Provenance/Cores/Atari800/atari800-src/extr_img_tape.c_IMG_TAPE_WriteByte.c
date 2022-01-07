
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_5__ {int savetime; scalar_t__ block_length; int save_gap; int * buffer; } ;
typedef TYPE_1__ IMG_TAPE_t ;


 int EnlargeBuffer (TYPE_1__*,scalar_t__) ;
 int FALSE ;
 int TRUE ;
 int WriteRecord (TYPE_1__*) ;

int IMG_TAPE_WriteByte(IMG_TAPE_t *file, UBYTE byte, unsigned int pokey_counter)
{




 int put_delay = file->savetime /1790 - 10 * pokey_counter / 895;
 if (put_delay > 05) {


  if (file->block_length > 0) {
   if (!WriteRecord(file))
    return FALSE;
  }

  file->save_gap += put_delay;
 }

 EnlargeBuffer(file, file->block_length + 1);
 file->buffer[file->block_length++] = byte;

 file->savetime = 0;

 return TRUE;
}
