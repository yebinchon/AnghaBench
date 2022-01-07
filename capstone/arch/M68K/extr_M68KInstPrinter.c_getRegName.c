
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ m68k_reg ;


 char const** s_reg_names ;

__attribute__((used)) static const char* getRegName(m68k_reg reg)
{
 return s_reg_names[(int)reg];
}
