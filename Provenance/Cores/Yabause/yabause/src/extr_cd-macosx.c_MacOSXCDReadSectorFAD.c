
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
typedef int const u32 ;


 int hCDROM ;
 int memcpy (void*,void*,int const) ;
 scalar_t__ pread (int,void*,int const,int const) ;

__attribute__((used)) static int MacOSXCDReadSectorFAD(u32 FAD, void *buffer)
{
 const int blockSize = 2352;






 if (hCDROM != -1)
 {
  if (pread(hCDROM, buffer, blockSize, (FAD - 150) * blockSize))
   return 1;

 }

 return 0;
}
