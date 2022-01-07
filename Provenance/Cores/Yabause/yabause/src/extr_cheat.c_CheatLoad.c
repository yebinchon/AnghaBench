
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int cheatlist_struct ;
struct TYPE_7__ {int type; int addr; int val; int enable; } ;
struct TYPE_6__ {int member_1; int member_0; } ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 int CheatChangeDescriptionByIndex (int,char*) ;
 int CheatClearCodes () ;
 int DoubleWordSwap (int) ;
 TYPE_3__* cheatlist ;
 int cheatsize ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int memset (void*,int ,int) ;
 int numcheats ;
 TYPE_3__* realloc (TYPE_3__*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int yread (TYPE_1__*,void*,int,int,int *) ;

int CheatLoad(const char *filename)
{
   FILE *fp;
   int i;
   char id[4];
   char desc[256];
   IOCheck_struct check = { 0, 0 };

   if (!filename)
      return -1;

   if ((fp = fopen(filename, "rb")) == ((void*)0))
      return -1;

   yread(&check, (void *)id, 1, 4, fp);
   if (strncmp(id, "YCHT", 4) != 0)
   {
      fclose(fp);
      return -2;
   }

   CheatClearCodes();

   yread(&check, (void *)&numcheats, sizeof(int), 1, fp);

   DoubleWordSwap(numcheats);


   if (numcheats >= cheatsize)
   {
      cheatlist = realloc(cheatlist, sizeof(cheatlist_struct) * (cheatsize * 2));
      memset((void *)cheatlist, 0, sizeof(cheatlist_struct) * (cheatsize * 2));
      cheatsize *= 2;
   }

   for(i = 0; i < numcheats; i++)
   {
      u8 descsize;

      yread(&check, (void *)&cheatlist[i].type, sizeof(int), 1, fp);
      yread(&check, (void *)&cheatlist[i].addr, sizeof(u32), 1, fp);
      yread(&check, (void *)&cheatlist[i].val, sizeof(u32), 1, fp);
      yread(&check, (void *)&descsize, sizeof(u8), 1, fp);
      yread(&check, (void *)desc, sizeof(char), descsize, fp);
      CheatChangeDescriptionByIndex(i, desc);
      yread(&check, (void *)&cheatlist[i].enable, sizeof(int), 1, fp);

      DoubleWordSwap(cheatlist[i].type);
      DoubleWordSwap(cheatlist[i].addr);
      DoubleWordSwap(cheatlist[i].val);
      DoubleWordSwap(cheatlist[i].enable);

   }

   fclose (fp);

   return 0;
}
