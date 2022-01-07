
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int volume; scalar_t__* audio; scalar_t__ loaded; int status; scalar_t__ lba; scalar_t__ index; scalar_t__ latency; scalar_t__ cycles; } ;


 int CD_STOP ;
 int NO_DISC ;
 TYPE_1__ cdd ;

void cdd_reset(void)
{

  cdd.cycles = 0;


  cdd.latency = 0;


  cdd.index = 0;


  cdd.lba = 0;


  cdd.status = cdd.loaded ? CD_STOP : NO_DISC;


  cdd.volume = 0x400;


  cdd.audio[0] = cdd.audio[1] = 0;
}
