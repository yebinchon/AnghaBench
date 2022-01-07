
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int total_tftps; int total_wgets; int total_echoes; int total_successes; int total_logins; int curr_open; int total_input; } ;


 int ATOMIC_GET (int *) ;
 scalar_t__ TRUE ;
 int fflush (int ) ;
 int printf (char*,int ,int,int,int,int,int,int,int) ;
 int sleep (int) ;
 TYPE_1__* srv ;
 int stdout ;

__attribute__((used)) static void *stats_thread(void *arg)
{
    uint32_t seconds = 0;

    while (TRUE)
    {

        printf("%ds\tProcessed: %d\tConns: %d\tLogins: %d\tRan: %d\tEchoes:%d Wgets: %d, TFTPs: %d\n",
               seconds++, ATOMIC_GET(&srv->total_input), ATOMIC_GET(&srv->curr_open), ATOMIC_GET(&srv->total_logins), ATOMIC_GET(&srv->total_successes),
               ATOMIC_GET(&srv->total_echoes), ATOMIC_GET(&srv->total_wgets), ATOMIC_GET(&srv->total_tftps));

        fflush(stdout);
        sleep(1);
    }
}
