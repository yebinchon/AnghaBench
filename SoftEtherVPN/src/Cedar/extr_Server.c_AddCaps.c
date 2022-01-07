
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CapsList; } ;
typedef TYPE_1__ CAPSLIST ;
typedef int CAPS ;


 int Insert (int ,int *) ;

void AddCaps(CAPSLIST *caps, CAPS *c)
{

 if (caps == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 Insert(caps->CapsList, c);
}
