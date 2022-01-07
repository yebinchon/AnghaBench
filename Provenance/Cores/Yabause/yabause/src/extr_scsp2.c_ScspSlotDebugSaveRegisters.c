
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int * scsp_regcache ;
 int ywrite (TYPE_1__*,void*,int,int,int *) ;

int ScspSlotDebugSaveRegisters(u8 slotnum, const char *filename)
{
   FILE *fp;
   int i;
   IOCheck_struct check = { 0, 0 };

   if ((fp = fopen(filename, "wb")) == ((void*)0))
      return -1;

   for (i = (slotnum * 0x20); i < ((slotnum+1) * 0x20); i += 2)
   {



      ywrite(&check, (void *)&scsp_regcache[i+1], 1, 1, fp);
      ywrite(&check, (void *)&scsp_regcache[i], 1, 1, fp);

   }

   fclose(fp);
   return 0;
}
