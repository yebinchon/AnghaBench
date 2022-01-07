
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csh ;


 unsigned int ARR_SIZE (char const**) ;
 char const** RegNames ;

const char* MOS65XX_reg_name(csh handle, unsigned int reg)
{



 if (reg >= ARR_SIZE(RegNames)) {
  return ((void*)0);
 }
 return RegNames[(int)reg];

}
