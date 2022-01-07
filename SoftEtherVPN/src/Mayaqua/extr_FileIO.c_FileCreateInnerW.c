
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int name2 ;
struct TYPE_4__ {int WriteMode; int * NameW; int Name; void* pData; } ;
typedef TYPE_1__ IO ;


 int ConvertPathW (int *) ;
 int KS_INC (int ) ;
 int KS_IO_CREATE_COUNT ;
 int MAX_SIZE ;
 void* OSFileCreateW (int *) ;
 int UniStrCpy (int *,int,int *) ;
 int UniToStr (int ,int,int *) ;
 TYPE_1__* ZeroMalloc (int) ;

IO *FileCreateInnerW(wchar_t *name)
{
 IO *o;
 void *p;
 wchar_t name2[MAX_SIZE];

 if (name == ((void*)0))
 {
  return ((void*)0);
 }

 UniStrCpy(name2, sizeof(name2), name);
 ConvertPathW(name2);

 p = OSFileCreateW(name2);
 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 o = ZeroMalloc(sizeof(IO));
 o->pData = p;
 UniStrCpy(o->NameW, sizeof(o->NameW), name2);
 UniToStr(o->Name, sizeof(o->Name), o->NameW);
 o->WriteMode = 1;


 KS_INC(KS_IO_CREATE_COUNT);

 return o;
}
