
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int csh ;
struct TYPE_3__ {char const* name; } ;


 unsigned int ARR_SIZE (TYPE_1__*) ;
 TYPE_1__* InstructionInfoTable ;

const char *MOS65XX_insn_name(csh handle, unsigned int id)
{



 if (id >= ARR_SIZE(InstructionInfoTable)) {
  return ((void*)0);
 }
 return InstructionInfoTable[id].name;

}
