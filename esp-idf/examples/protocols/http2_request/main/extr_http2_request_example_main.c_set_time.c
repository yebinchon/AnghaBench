
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int member_1; int member_0; } ;
struct timeval {int tv_sec; } ;


 int SNTP_OPMODE_POLL ;
 int settimeofday (struct timeval*,struct timezone*) ;
 int sntp_init () ;
 int sntp_setoperatingmode (int ) ;

__attribute__((used)) static void set_time(void)
{
    struct timeval tv = {
        .tv_sec = 1509449941,
    };
    struct timezone tz = {
        0, 0
    };
    settimeofday(&tv, &tz);


    sntp_setoperatingmode(SNTP_OPMODE_POLL);
    sntp_init();
}
