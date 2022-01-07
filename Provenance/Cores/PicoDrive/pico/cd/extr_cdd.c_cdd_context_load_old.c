
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_2__ {int lba; } ;


 TYPE_1__ cdd ;
 int memcpy (int *,int *,int) ;

int cdd_context_load_old(uint8 *state)
{
  memcpy(&cdd.lba, state + 8, sizeof(cdd.lba));
  return 12 * 4;
}
