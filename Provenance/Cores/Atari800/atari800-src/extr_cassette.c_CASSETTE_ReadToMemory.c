
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int CASSETTE_TapeMotor (int) ;
 int FALSE ;
 int IMG_TAPE_ReadToMemory (int ,int ,int) ;
 int IMG_TAPE_SkipToData (int ,scalar_t__) ;

 int UpdateFlags () ;
 int cassette_file ;
 scalar_t__ cassette_gapdelay ;
 int cassette_readable ;
 int eof_of_tape ;
 int event_time_left ;

int CASSETTE_ReadToMemory(UWORD dest_addr, int length)
{
 CASSETTE_TapeMotor(1);
 if (!cassette_readable)
  return 0;


 cassette_gapdelay -= event_time_left / 1789;
 if (!IMG_TAPE_SkipToData(cassette_file, cassette_gapdelay)) {

  cassette_gapdelay = 0;
  eof_of_tape = 1;
  UpdateFlags();
  return 0;
 }
 cassette_gapdelay = 0;


 switch (IMG_TAPE_ReadToMemory(cassette_file, dest_addr, length)) {
 case 128:
  return 128;
 case -1:
  eof_of_tape = 1;
  UpdateFlags();

 default:
  return FALSE;
 }
}
