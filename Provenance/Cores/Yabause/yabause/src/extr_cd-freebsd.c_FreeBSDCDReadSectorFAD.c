
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SEEK_SET ;
 int hCDROM ;
 int lseek (int,int,int ) ;
 int read (int,void*,int) ;

__attribute__((used)) static int FreeBSDCDReadSectorFAD(u32 FAD, void *buffer) {
 if (hCDROM != -1)
 {
  lseek(hCDROM, (FAD - 150) * 2352, SEEK_SET);
  read(hCDROM, buffer, 2352);

  return 1;
 }

 return 0;
}
