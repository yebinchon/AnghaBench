
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int PC; } ;
struct TYPE_6__ {TYPE_2__ regs; } ;


 TYPE_1__* MSH2 ;
 int MappedMemoryLoad (char const*,int ) ;
 int MappedMemoryLoadCoff (char const*) ;
 int MappedMemoryLoadElf (char const*) ;
 int SH2GetRegisters (TYPE_1__*,TYPE_2__*) ;
 int SH2SetRegisters (TYPE_1__*,TYPE_2__*) ;
 int YabauseResetNoLoad () ;
 int YabauseSpeedySetup () ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;
 char* strrchr (char const*,char) ;
 char toupper (char) ;

void MappedMemoryLoadExec(const char *filename, u32 pc)
{
   char *p;
   size_t i;

   if ((p = strrchr(filename, '.')))
   {
      p = strdup(p);
      for (i = 0; i < strlen(p); i++)
         p[i] = toupper(p[i]);
      if (strcmp(p, ".COF") == 0 || strcmp(p, ".COFF") == 0)
      {
         MappedMemoryLoadCoff(filename);
         free(p);
         return;
      }
      else if(strcmp(p, ".ELF") == 0)
      {
         MappedMemoryLoadElf(filename);
         free(p);
         return;
      }

      free(p);
   }

   YabauseResetNoLoad();


   YabauseSpeedySetup();

   MappedMemoryLoad(filename, pc);
   SH2GetRegisters(MSH2, &MSH2->regs);
   MSH2->regs.PC = pc;
   SH2SetRegisters(MSH2, &MSH2->regs);
}
