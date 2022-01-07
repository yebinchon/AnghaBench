
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sigaction {int sa_flags; int sa_handler; } ;
struct TYPE_4__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;


 int I_HandleSoundTimer ;
 int SA_RESTART ;
 int fprintf (int ,char*) ;
 int itimer ;
 int setitimer (int ,struct itimerval*,struct itimerval*) ;
 int sig ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int stderr ;

int I_SoundSetTimer( int duration_of_tick )
{

  struct itimerval value;
  struct itimerval ovalue;
  struct sigaction act;
  struct sigaction oact;

  int res;





  act.sa_handler = I_HandleSoundTimer;



  act.sa_flags = SA_RESTART;

  sigaction( sig, &act, &oact );

  value.it_interval.tv_sec = 0;
  value.it_interval.tv_usec = duration_of_tick;
  value.it_value.tv_sec = 0;
  value.it_value.tv_usec = duration_of_tick;


  res = setitimer( itimer, &value, &ovalue );


  if ( res == -1 )
    fprintf( stderr, "I_SoundSetTimer: interrupt n.a.\n");

  return res;
}
