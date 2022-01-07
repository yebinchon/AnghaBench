
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int syncHdr ;
typedef int s8 ;


 int SEEK_SET ;
 int hCDROM ;
 int lseek (int,int,int ) ;
 int memcpy (void*,int const*,int) ;
 int read (int,char*,int) ;

__attribute__((used)) static int NetBSDCDReadSectorFAD(u32 FAD, void *buffer) {
       static const s8 syncHdr[] = {
           0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
           0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00 };

       if (hCDROM != -1)
       {
               memcpy(buffer, syncHdr, sizeof (syncHdr));
               lseek(hCDROM, (FAD - 150) * 2048, SEEK_SET);
               read(hCDROM, (char *)buffer + 0x10, 2048);

               return 1;
       }

       return 0;
}
