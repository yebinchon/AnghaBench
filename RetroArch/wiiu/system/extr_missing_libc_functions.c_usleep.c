
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int useconds_t ;


 int OSSleepTicks (int ) ;
 int us_to_ticks (int ) ;

int usleep(useconds_t microseconds) {
 OSSleepTicks(us_to_ticks(microseconds));
 return 0;
}
