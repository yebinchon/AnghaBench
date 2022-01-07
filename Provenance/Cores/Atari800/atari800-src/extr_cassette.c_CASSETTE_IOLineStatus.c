
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CASSETTE_record ;
 int IMG_TAPE_SerinStatus (int ,int ) ;
 int cassette_file ;
 int cassette_readable ;
 int event_time_left ;
 scalar_t__ passing_gap ;

int CASSETTE_IOLineStatus(void)
{

 if (!cassette_readable || CASSETTE_record || passing_gap) {
  return 1;
 }

 return IMG_TAPE_SerinStatus(cassette_file, event_time_left);
}
