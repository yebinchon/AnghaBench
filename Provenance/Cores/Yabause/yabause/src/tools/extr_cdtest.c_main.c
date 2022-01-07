
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ (* Init ) (char*) ;int (* GetStatus ) () ;int (* ReadTOC ) (int ) ;int (* ReadSectorFAD ) (int,scalar_t__) ;} ;


 TYPE_1__ ArchCD ;
 char* COPYRIGHT_YEAR ;
 int IsTOCValid (int ) ;
 char* PROG_NAME ;
 int ProgramUsage () ;
 char* VER_NAME ;
 int atexit (int ) ;
 int cdTOC ;
 scalar_t__ cdbuffer ;
 int cleanup ;
 int exit (int) ;
 scalar_t__ memcmp (char*,scalar_t__,int) ;
 int printf (char*,...) ;
 scalar_t__ stub1 (char*) ;
 int stub2 () ;
 int stub3 (int ) ;
 int stub4 (int,scalar_t__) ;
 int stub5 (int,scalar_t__) ;
 int testspassed ;

int main(int argc, char *argv[])
{
   char *cdrom_name = ((void*)0);
   u32 f_size=0;
   int status;
   char syncheader[12] = { 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                           0xFF, 0xFF, 0xFF, 0x00};

   atexit(cleanup);


   if (argc != 2)
   {
      ProgramUsage();
   }

   printf("%s v%s - by Cyber Warrior X(c)%s\n", PROG_NAME, VER_NAME, COPYRIGHT_YEAR);

   cdrom_name = argv[1];


   if (ArchCD.Init(cdrom_name) != 0)
   {
      printf("CDInit error: Unable to initialize cdrom\n");
      exit(1);
   }
   else testspassed++;


   status = ArchCD.GetStatus();

   if (status == 0 || status == 1)
   {
      testspassed++;

      if (ArchCD.ReadTOC(cdTOC) != (0xCC * 2))
      {
         printf("CDReadToc error: return value was not the correct size\n");
      }
      else testspassed++;


      if (!IsTOCValid(cdTOC))
      {
         printf("CDReadToc error: TOC data has some issues\n");
      }
      else testspassed++;


      if (ArchCD.ReadSectorFAD(150, cdbuffer) != 1)
      {
         printf("CDReadSectorFAD error: Reading of LBA 0(FAD 150) returned false\n");
      }
      else testspassed++;


      if (memcmp(syncheader, cdbuffer, 12) != 0)
      {
         printf("CDReadSectorFAD error: LBA 0(FAD 150) read is missing sync header\n");
      }
      else testspassed++;


      if (memcmp("SEGA SEGASATURN", cdbuffer+0x10, 15) != 0)
      {
         printf("CDReadSectorFAD error: LBA 0(FAD 150)'s sector contents were not as expected\n");
      }
      else testspassed++;


      if (ArchCD.ReadSectorFAD(166, cdbuffer) != 1)
      {
         printf("CDReadSectorFAD error: Reading of LBA 16(FAD 166) returned false\n");
      }
      else testspassed++;


      if (memcmp(syncheader, cdbuffer, 12) != 0)
      {
         printf("CDReadSectorFAD error: LBA 16(FAD 166) read is missing sync header\n");
      }
      else testspassed++;


      if (memcmp("CD001", cdbuffer+0x11, 5) != 0)
      {
         printf("CDReadSectorFAD error: LBA 16(FAD 166)'s sector contents were not as expected\n");
      }
      else testspassed++;
   }
   else
   {
      printf("CDGetStatus error: Can't continue the rest of the test - There's either no CD present or the tray is open\n");
      exit(1);
   }
}
