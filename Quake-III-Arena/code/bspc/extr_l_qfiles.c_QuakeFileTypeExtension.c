
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* extension; int type; } ;


 char* QFILEEXT_UNKNOWN ;
 TYPE_1__* quakefiletypes ;

char *QuakeFileTypeExtension(int type)
{
 int i;

 for (i = 0; quakefiletypes[i].extension; i++)
 {
  if (quakefiletypes[i].type == type)
  {
   return quakefiletypes[i].extension;
  }
 }
 return QFILEEXT_UNKNOWN;
}
