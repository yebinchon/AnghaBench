
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int JsonHint_IsBool; } ;
typedef int PACK ;
typedef TYPE_1__ ELEMENT ;


 TYPE_1__* PackAddIntEx (int *,char*,int,int ,int ) ;

ELEMENT *PackAddBoolEx(PACK *p, char *name, bool b, UINT index, UINT total)
{
 ELEMENT *e = PackAddIntEx(p, name, b ? 1 : 0, index, total);
 if (e != ((void*)0))
 {
  e->JsonHint_IsBool = 1;
 }
 return e;
}
