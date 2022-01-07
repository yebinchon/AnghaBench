
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CASSETTE_record ;
 int ESC_enable_sio_patch ;
 int IMG_TAPE_WriteByte (int ,int,int) ;
 int* POKEY_AUDF ;
 size_t POKEY_CHAN3 ;
 size_t POKEY_CHAN4 ;
 int cassette_file ;
 scalar_t__ cassette_writable ;

void CASSETTE_PutByte(int byte)
{
 if (!ESC_enable_sio_patch && cassette_writable && CASSETTE_record)
  IMG_TAPE_WriteByte(cassette_file, byte, POKEY_AUDF[POKEY_CHAN3] + POKEY_AUDF[POKEY_CHAN4]*0x100);
}
