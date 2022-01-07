
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timediff_t ;


 int fprintf (int ,char*,int,int,char*) ;
 int stderr ;
 int usec_magnitude ;

__attribute__((used)) static bool usec_matches_seconds(timediff_t time_usec, int expected_seconds)
{
  int time_sec = (int)(time_usec / usec_magnitude);
  bool same = (time_sec == expected_seconds);
  fprintf(stderr, "is %d us same as %d seconds? %s\n",
          (int)time_usec, expected_seconds,
          same?"Yes":"No");
  return same;
}
