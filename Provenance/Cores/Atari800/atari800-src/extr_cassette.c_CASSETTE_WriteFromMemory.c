
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int CASSETTE_TapeMotor (int) ;
 int IMG_TAPE_WriteFromMemory (int ,int ,int,scalar_t__) ;
 int cassette_file ;
 scalar_t__ cassette_gapdelay ;
 int cassette_writable ;

int CASSETTE_WriteFromMemory(UWORD src_addr, int length)
{
 int result;
 CASSETTE_TapeMotor(1);
 if (!cassette_writable)
  return 0;

 result = IMG_TAPE_WriteFromMemory(cassette_file, src_addr, length, cassette_gapdelay);
 cassette_gapdelay = 0;
 return result;
}
