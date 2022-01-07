
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pcm_t ;
struct TYPE_5__ {scalar_t__ cycles; TYPE_1__* chan; int ram; int bank; } ;
struct TYPE_4__ {int pan; } ;


 int * blip ;
 int blip_clear (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__ pcm ;

void pcm_reset(void)
{

  memset(&pcm, 0, sizeof(pcm_t));


  pcm.bank = pcm.ram;


  pcm.chan[0].pan = 0xff;
  pcm.chan[1].pan = 0xff;
  pcm.chan[2].pan = 0xff;
  pcm.chan[3].pan = 0xff;
  pcm.chan[4].pan = 0xff;
  pcm.chan[5].pan = 0xff;
  pcm.chan[6].pan = 0xff;
  pcm.chan[7].pan = 0xff;


  pcm.cycles = 0;


  blip_clear(blip[0]);
  blip_clear(blip[1]);
}
