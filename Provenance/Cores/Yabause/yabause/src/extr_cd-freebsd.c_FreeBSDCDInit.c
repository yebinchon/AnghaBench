
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDRIOCSETBLOCKSIZE ;
 int LOG (char*,char const*) ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int hCDROM ;
 int ioctl (int,int ,int*) ;
 int open (char const*,int) ;

__attribute__((used)) static int FreeBSDCDInit(const char * cdrom_name) {
 int bsize = 2352;

 if ((hCDROM = open(cdrom_name, O_RDONLY | O_NONBLOCK)) == -1) {
  LOG("CDInit (%s) failed\n", cdrom_name);
  return -1;
 }

 if (ioctl (hCDROM, CDRIOCSETBLOCKSIZE, &bsize) == -1) {
  return -1;
 }

 LOG("CDInit (%s) OK\n", cdrom_name);
 return 0;
}
