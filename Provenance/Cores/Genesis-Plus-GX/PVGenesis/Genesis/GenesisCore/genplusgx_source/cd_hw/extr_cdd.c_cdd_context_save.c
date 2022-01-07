
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_2__ {int status; int volume; int scanOffset; int lba; int index; int latency; int cycles; } ;


 TYPE_1__ cdd ;
 int save_param (int *,int) ;

int cdd_context_save(uint8 *state)
{
  int bufferptr = 0;

  save_param(&cdd.cycles, sizeof(cdd.cycles));
  save_param(&cdd.latency, sizeof(cdd.latency));
  save_param(&cdd.index, sizeof(cdd.index));
  save_param(&cdd.lba, sizeof(cdd.lba));
  save_param(&cdd.scanOffset, sizeof(cdd.scanOffset));
  save_param(&cdd.volume, sizeof(cdd.volume));
  save_param(&cdd.status, sizeof(cdd.status));

  return bufferptr;
}
