
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,int ,int ) ;
 int inUse ;
 int totalInUse ;

void S_DisplayFreeMemory() {
 Com_Printf("%d bytes free sound buffer memory, %d total used\n", inUse, totalInUse);
}
