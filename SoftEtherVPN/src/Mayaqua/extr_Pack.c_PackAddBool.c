
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int JsonHint_IsBool; } ;
typedef int PACK ;
typedef TYPE_1__ ELEMENT ;


 TYPE_1__* PackAddInt (int *,char*,int) ;

ELEMENT *PackAddBool(PACK *p, char *name, bool b)
{
 ELEMENT *e = PackAddInt(p, name, b ? 1 : 0);
 if (e != ((void*)0))
 {
  e->JsonHint_IsBool = 1;
 }
 return e;
}
