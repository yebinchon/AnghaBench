
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int snprintf (char*,int,char*,unsigned int) ;

void PERMacJoyKeyName(u32 key, char *name, int size) {
    snprintf(name, size, "%x", (unsigned int)key);
}
