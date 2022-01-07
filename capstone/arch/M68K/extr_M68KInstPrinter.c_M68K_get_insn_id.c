
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cs_struct ;
struct TYPE_3__ {unsigned int id; } ;
typedef TYPE_1__ cs_insn ;



void M68K_get_insn_id(cs_struct* h, cs_insn* insn, unsigned int id)
{
 insn->id = id;
}
