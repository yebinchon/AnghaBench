
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,...) ;
 float MEM_POOL_SIZE ;
 float STRING_POOL_SIZE ;
 float allocPoint ;
 float strPoolIndex ;

void String_Report() {
 float f;
 Com_Printf("Memory/String Pool Info\n");
 Com_Printf("----------------\n");
 f = strPoolIndex;
 f /= STRING_POOL_SIZE;
 f *= 100;
 Com_Printf("String Pool is %.1f%% full, %i bytes out of %i used.\n", f, strPoolIndex, STRING_POOL_SIZE);
 f = allocPoint;
 f /= MEM_POOL_SIZE;
 f *= 100;
 Com_Printf("Memory Pool is %.1f%% full, %i bytes out of %i used.\n", f, allocPoint, MEM_POOL_SIZE);
}
