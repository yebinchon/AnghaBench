
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timediff_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int LONG_MAX ;
 int LONG_MIN ;

long timediff(struct timeval newer, struct timeval older)
{
  timediff_t diff = newer.tv_sec-older.tv_sec;
  if(diff >= (LONG_MAX/1000))
    return LONG_MAX;
  else if(diff <= (LONG_MIN/1000))
    return LONG_MIN;
  return (long)(newer.tv_sec-older.tv_sec)*1000+
    (long)(newer.tv_usec-older.tv_usec)/1000;
}
