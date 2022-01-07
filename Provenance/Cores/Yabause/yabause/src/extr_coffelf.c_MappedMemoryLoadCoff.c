
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ physaddr; scalar_t__ virtaddr; scalar_t__ sectionsize; scalar_t__ sectionptr; scalar_t__ relptr; scalar_t__ linenoptr; int numreloc; int numlineno; scalar_t__ flags; } ;
typedef TYPE_1__ u8 ;
typedef size_t u32 ;
typedef TYPE_1__ section_header_struct ;
struct TYPE_13__ {int numsections; scalar_t__ timedate; scalar_t__ symtabptr; scalar_t__ numsymtabs; int optheader; int flags; int* magic; } ;
typedef TYPE_3__ coff_header_struct ;
typedef int coff_header ;
struct TYPE_14__ {int versionstamp; scalar_t__ textsize; scalar_t__ datasize; scalar_t__ bsssize; scalar_t__ entrypoint; scalar_t__ textaddr; scalar_t__ dataaddr; } ;
typedef TYPE_4__ aout_header_struct ;
typedef int aout_header ;
struct TYPE_16__ {scalar_t__ PC; } ;
struct TYPE_15__ {TYPE_7__ regs; } ;
typedef int FILE ;


 int DoubleWordSwap (scalar_t__) ;
 TYPE_6__* MSH2 ;
 int MappedMemoryWriteByte (scalar_t__,TYPE_1__) ;
 int SEEK_SET ;
 int SH2GetRegisters (TYPE_6__*,TYPE_7__*) ;
 int SH2SetRegisters (TYPE_6__*,TYPE_7__*) ;
 int SH2WriteNotify (scalar_t__,size_t) ;
 int WordSwap (int) ;
 int YabauseResetNoLoad () ;
 int YabauseSpeedySetup () ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (void*,int,int,int *) ;
 int free (TYPE_1__*) ;
 int fseek (int *,scalar_t__,int ) ;
 scalar_t__ malloc (int) ;

int MappedMemoryLoadCoff(const char *filename)
{
   coff_header_struct coff_header;
   aout_header_struct aout_header;
   section_header_struct *section_headers=((void*)0);
   FILE *fp;
   u8 *buffer;
   u32 i, j;
   size_t num_read = 0;

   if ((fp = fopen(filename, "rb")) == ((void*)0))
      return -1;

   num_read = fread((void *)&coff_header, sizeof(coff_header), 1, fp);

   WordSwap(coff_header.numsections);
   DoubleWordSwap(coff_header.timedate);
   DoubleWordSwap(coff_header.timedate);
   DoubleWordSwap(coff_header.symtabptr);
   DoubleWordSwap(coff_header.numsymtabs);
   WordSwap(coff_header.optheader);
   WordSwap(coff_header.flags);


   if (coff_header.magic[0] != 0x05 || coff_header.magic[1] != 0x00 ||
       coff_header.optheader != sizeof(aout_header))
   {

      fclose(fp);
      return -1;
   }

   num_read = fread((void *)&aout_header, sizeof(aout_header), 1, fp);

   WordSwap(aout_header.versionstamp);
   DoubleWordSwap(aout_header.textsize);
   DoubleWordSwap(aout_header.datasize);
   DoubleWordSwap(aout_header.bsssize);
   DoubleWordSwap(aout_header.entrypoint);
   DoubleWordSwap(aout_header.textaddr);
   DoubleWordSwap(aout_header.dataaddr);



   if ((section_headers = (section_header_struct *)malloc(sizeof(section_header_struct) * coff_header.numsections)) == ((void*)0))
   {
      fclose(fp);
      return -2;
   }


   for (i = 0; i < coff_header.numsections; i++)
   {
      num_read = fread((void *)&section_headers[i], sizeof(section_header_struct), 1, fp);

      DoubleWordSwap(section_headers[i].physaddr);
      DoubleWordSwap(section_headers[i].virtaddr);
      DoubleWordSwap(section_headers[i].sectionsize);
      DoubleWordSwap(section_headers[i].sectionptr);
      DoubleWordSwap(section_headers[i].relptr);
      DoubleWordSwap(section_headers[i].linenoptr);
      WordSwap(section_headers[i].numreloc);
      WordSwap(section_headers[i].numlineno);
      DoubleWordSwap(section_headers[i].flags);

   }

   YabauseResetNoLoad();


   YabauseSpeedySetup();


   for (i = 0; i < coff_header.numsections; i++)
   {
      if (section_headers[i].sectionsize == 0 ||
          section_headers[i].sectionptr == 0)

         continue;

      if ((buffer = (u8 *)malloc(section_headers[i].sectionsize)) == ((void*)0))
      {
         fclose(fp);
         free(section_headers);
         return -2;
      }

      fseek(fp, section_headers[i].sectionptr, SEEK_SET);
      num_read = fread((void *)buffer, 1, section_headers[i].sectionsize, fp);

      for (j = 0; j < section_headers[i].sectionsize; j++)
         MappedMemoryWriteByte(section_headers[i].physaddr+j, buffer[j]);
      SH2WriteNotify(section_headers[i].physaddr,
                     section_headers[i].sectionsize);

      free(buffer);
   }


   free(section_headers);
   fclose(fp);

   SH2GetRegisters(MSH2, &MSH2->regs);
   MSH2->regs.PC = aout_header.entrypoint;
   SH2SetRegisters(MSH2, &MSH2->regs);
   return 0;
}
