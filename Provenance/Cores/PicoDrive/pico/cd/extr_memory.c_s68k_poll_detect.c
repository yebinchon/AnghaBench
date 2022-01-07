
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ s68k_poll_a; scalar_t__ s68k_poll_clk; scalar_t__ s68k_poll_cnt; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int EL_CDPOLL ;
 scalar_t__ POLL_CYCLES ;
 scalar_t__ POLL_LIMIT ;
 TYPE_2__* Pico_mcd ;
 scalar_t__ SekCyclesDoneS68k () ;
 scalar_t__ SekIsStoppedS68k () ;
 int SekNotPolling ;
 scalar_t__ SekNotPollingS68k ;
 int SekPcS68k ;
 int SekSetStopS68k (int) ;
 int elprintf (int ,char*,int ,scalar_t__) ;

u32 s68k_poll_detect(u32 a, u32 d)
{
  return d;
}
