
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG (char*,char const*) ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int hCDROM ;
 int open (char const*,int) ;

__attribute__((used)) static int NetBSDCDInit(const char * cdrom_name) {
       if ((hCDROM = open(cdrom_name, O_RDONLY | O_NONBLOCK)) == -1) {
               LOG("CDInit (%s) failed\n", cdrom_name);
               return -1;
       }

       LOG("CDInit (%s) OK\n", cdrom_name);
       return 0;
}
