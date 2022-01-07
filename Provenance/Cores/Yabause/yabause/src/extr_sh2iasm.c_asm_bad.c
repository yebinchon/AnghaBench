
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char const*) ;

void asm_bad(const char *str, char *err_msg)



{
    sprintf(err_msg, "ERROR : %s", str);
}
