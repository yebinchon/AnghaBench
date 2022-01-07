
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CASSETTE_STATUS_NONE ;
 scalar_t__ CASSETTE_STATUS_READ_WRITE ;
 int CASSETTE_record ;
 scalar_t__ CASSETTE_status ;
 int CASSETTE_write_protect ;
 int FALSE ;
 int IMG_TAPE_Flush (int ) ;
 int UpdateFlags () ;
 int cassette_file ;
 scalar_t__ cassette_writable ;
 int eof_of_tape ;
 scalar_t__ event_time_left ;
 int passing_gap ;
 int pending_serin ;

int CASSETTE_ToggleRecord(void)
{
 if (CASSETTE_status == CASSETTE_STATUS_NONE)
  return FALSE;
 CASSETTE_record = !CASSETTE_record;
 if (CASSETTE_record)
  eof_of_tape = FALSE;
 else if (cassette_writable)

  IMG_TAPE_Flush(cassette_file);
 event_time_left = 0;
 pending_serin = FALSE;
 passing_gap = FALSE;
 UpdateFlags();

 return !CASSETTE_record || (CASSETTE_status == CASSETTE_STATUS_READ_WRITE && !CASSETTE_write_protect);
}
