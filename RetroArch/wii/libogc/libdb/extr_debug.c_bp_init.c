
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t s32 ;
struct TYPE_2__ {int instr; int * next; int * address; } ;


 size_t GEKKO_MAX_BP ;
 TYPE_1__* bp_entries ;

__attribute__((used)) static __inline__ void bp_init()
{
 s32 i;

 for(i=0;i<GEKKO_MAX_BP;i++) {
  bp_entries[i].address = ((void*)0);
  bp_entries[i].instr = 0xffffffff;
  bp_entries[i].next = ((void*)0);
 }
}
