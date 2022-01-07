
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CASSETTE_record ;
 void* FALSE ;
 int IMG_TAPE_Seek (int *,unsigned int) ;
 int UpdateFlags () ;
 int * cassette_file ;
 scalar_t__ eof_of_tape ;
 scalar_t__ event_time_left ;
 void* passing_gap ;
 void* pending_serin ;

void CASSETTE_Seek(unsigned int position)
{
 if (cassette_file != ((void*)0)) {
  if (position > 0)
   position --;
  IMG_TAPE_Seek(cassette_file, position);

  event_time_left = 0;
  pending_serin = FALSE;
  passing_gap = FALSE;
  eof_of_tape = 0;
  CASSETTE_record = FALSE;
  UpdateFlags();
 }
}
