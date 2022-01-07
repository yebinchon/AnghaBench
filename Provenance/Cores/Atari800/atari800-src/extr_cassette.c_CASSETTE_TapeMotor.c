
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CASSETTE_record ;
 int IMG_TAPE_Flush (int ) ;
 int UpdateFlags () ;
 int cassette_file ;
 int cassette_motor ;
 scalar_t__ cassette_writable ;

void CASSETTE_TapeMotor(int onoff)
{
 if (cassette_motor != onoff) {
  if (CASSETTE_record && cassette_writable)

   IMG_TAPE_Flush(cassette_file);
  cassette_motor = onoff;
  UpdateFlags();
 }
}
