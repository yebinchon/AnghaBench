
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_ShowImages () ;
 int R_SyncRenderThread () ;
 int Sys_LowPhysicalMemory () ;

void RE_EndRegistration( void ) {
 R_SyncRenderThread();
 if (!Sys_LowPhysicalMemory()) {
  RB_ShowImages();
 }
}
