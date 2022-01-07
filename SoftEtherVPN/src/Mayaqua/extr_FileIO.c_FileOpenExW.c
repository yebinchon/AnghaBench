
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
struct TYPE_6__ {int HamMode; int * HamBuf; int NameW; int Name; } ;
typedef TYPE_1__ IO ;


 TYPE_1__* FileOpenInnerW (int*,int,int) ;
 int Free (TYPE_1__*) ;
 int InnerFilePathW (int*,int,int*) ;
 int MAX_SIZE ;
 int * ReadHamcoreW (int*) ;
 int UniStrCpy (int ,int,int*) ;
 int UniToStr (int ,int,int ) ;
 TYPE_1__* ZeroMalloc (int) ;

IO *FileOpenExW(wchar_t *name, bool write_mode, bool read_lock)
{
 wchar_t tmp[MAX_SIZE];

 if (name == ((void*)0))
 {
  return ((void*)0);
 }

 InnerFilePathW(tmp, sizeof(tmp), name);

 if (name[0] == L'|')
 {
  IO *o = ZeroMalloc(sizeof(IO));
  name++;
  UniStrCpy(o->NameW, sizeof(o->NameW), name);
  UniToStr(o->Name, sizeof(o->Name), o->NameW);
  o->HamMode = 1;
  o->HamBuf = ReadHamcoreW(name);
  if (o->HamBuf == ((void*)0))
  {
   Free(o);
   return ((void*)0);
  }
  return o;
 }
 else
 {
  return FileOpenInnerW(tmp, write_mode, read_lock);
 }
}
