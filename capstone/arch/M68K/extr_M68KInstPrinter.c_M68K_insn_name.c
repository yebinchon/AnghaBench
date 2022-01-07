
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csh ;


 char const** s_instruction_names ;

const char* M68K_insn_name(csh handle, unsigned int id)
{



 return s_instruction_names[id];

}
