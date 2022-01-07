
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ company; } ;
struct TYPE_3__ {scalar_t__ pName; } ;


 int MAXCOMPANY ;
 int MAXPERIPHERALS ;
 TYPE_2__* companyinfo ;
 TYPE_1__* peripheralinfo ;

char *get_peripheral(int index)
{
  if (index < MAXPERIPHERALS)
    return (char *)peripheralinfo[index].pName;
  return (char *)companyinfo[MAXCOMPANY - 1].company;
}
