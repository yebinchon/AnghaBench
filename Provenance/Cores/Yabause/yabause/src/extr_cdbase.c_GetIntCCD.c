
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_dict; TYPE_1__* dict; } ;
typedef TYPE_2__ ccd_struct ;
struct TYPE_4__ {int value; int name; int section; } ;


 scalar_t__ stricmp (int ,char*) ;
 int strtol (int ,int *,int ) ;

__attribute__((used)) static int GetIntCCD(ccd_struct *ccd, char *section, char *name)
{
 int i;
 for (i = 0; i < ccd->num_dict; i++)
 {
  if (stricmp(ccd->dict[i].section, section) == 0 &&
    stricmp(ccd->dict[i].name, name) == 0)
   return strtol(ccd->dict[i].value, ((void*)0), 0);
 }

 return -1;
}
