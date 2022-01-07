
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csh ;


 unsigned int ARR_SIZE (char const**) ;
 char const** s_reg_names ;

const char* M68K_reg_name(csh handle, unsigned int reg)
{



 if (reg >= ARR_SIZE(s_reg_names)) {
  return ((void*)0);
 }
 return s_reg_names[(int)reg];

}
