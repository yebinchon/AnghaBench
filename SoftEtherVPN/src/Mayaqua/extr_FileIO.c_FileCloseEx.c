
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HamMode; int HamBuf; int pData; int SetUpdateTime; int SetCreateTime; scalar_t__ WriteMode; } ;
typedef TYPE_1__ IO ;


 int Free (TYPE_1__*) ;
 int FreeBuf (int ) ;
 int KS_INC (int ) ;
 int KS_IO_CLOSE_COUNT ;
 int OSFileClose (int ,int) ;
 int Win32FileSetDate (int ,int ,int ) ;

void FileCloseEx(IO *o, bool no_flush)
{

 if (o == ((void*)0))
 {
  return;
 }

 if (o->HamMode == 0)
 {
  if (o->WriteMode)
  {



  }

  OSFileClose(o->pData, no_flush);
 }
 else
 {
  FreeBuf(o->HamBuf);
 }
 Free(o);


 KS_INC(KS_IO_CLOSE_COUNT);
}
