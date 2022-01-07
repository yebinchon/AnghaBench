
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {char* itemnum; } ;


 int YabLoadState (char*) ;
 TYPE_1__* cdip ;
 int sprintf (char*,char*,char const*,char*,int) ;

int YabLoadStateSlot(const char *dirpath, u8 slot)
{
   char filename[512];

   if (cdip == ((void*)0))
      return -1;




   sprintf(filename, "%s/%s_%03d.yss", dirpath, cdip->itemnum, slot);

   return YabLoadState(filename);
}
