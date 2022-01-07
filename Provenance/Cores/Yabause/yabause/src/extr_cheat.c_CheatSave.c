
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_7__ {int type; int addr; int val; int enable; } ;
typedef TYPE_1__ cheatlist_struct ;
struct TYPE_9__ {scalar_t__ desc; } ;
struct TYPE_8__ {int member_1; int member_0; } ;
typedef TYPE_2__ IOCheck_struct ;
typedef int FILE ;


 int DoubleWordSwap (int) ;
 TYPE_5__* cheatlist ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*) ;
 int memcpy (TYPE_1__*,TYPE_5__*,int) ;
 int numcheats ;
 int strlen (scalar_t__) ;
 int ywrite (TYPE_2__*,void*,int,int,int *) ;

int CheatSave(const char *filename)
{
   FILE *fp;
   int i;
   int num;
   IOCheck_struct check = { 0, 0 };

   if (!filename)
      return -1;

   if ((fp = fopen(filename, "wb")) == ((void*)0))
      return -1;

   fprintf(fp, "YCHT");
   num = numcheats;

   DoubleWordSwap(num);

   ywrite(&check, (void *)&num, sizeof(int), 1, fp);

   for(i = 0; i < numcheats; i++)
   {
      u8 descsize;
      cheatlist_struct cheat;

      memcpy(&cheat, &cheatlist[i], sizeof(cheatlist_struct));

      DoubleWordSwap(cheat.type);
      DoubleWordSwap(cheat.addr);
      DoubleWordSwap(cheat.val);
      DoubleWordSwap(cheat.enable);

      ywrite(&check, (void *)&cheat.type, sizeof(int), 1, fp);
      ywrite(&check, (void *)&cheat.addr, sizeof(u32), 1, fp);
      ywrite(&check, (void *)&cheat.val, sizeof(u32), 1, fp);
      descsize = (u8)strlen(cheatlist[i].desc)+1;
      ywrite(&check, (void *)&descsize, sizeof(u8), 1, fp);
      ywrite(&check, (void *)cheatlist[i].desc, sizeof(char), descsize, fp);
      ywrite(&check, (void *)&cheat.enable, sizeof(int), 1, fp);
   }

   fclose (fp);

   return 0;
}
