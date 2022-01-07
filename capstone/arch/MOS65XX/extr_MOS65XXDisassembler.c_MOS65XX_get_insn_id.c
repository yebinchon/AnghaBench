
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cs_struct ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ cs_insn ;
struct TYPE_5__ {int ins; } ;


 TYPE_2__* OpInfoTable ;

void MOS65XX_get_insn_id(cs_struct *h, cs_insn *insn, unsigned int id)
{
 if (id < 256) {
  insn->id = OpInfoTable[id].ins;
 }
}
