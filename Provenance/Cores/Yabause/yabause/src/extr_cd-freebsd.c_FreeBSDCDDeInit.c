
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG (char*) ;
 int close (int) ;
 int hCDROM ;

__attribute__((used)) static void FreeBSDCDDeInit(void) {
 if (hCDROM != -1) {
  close(hCDROM);
 }

 LOG("CDDeInit OK\n");
}
