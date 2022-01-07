
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bs ;
struct TYPE_4__ {int Halt; int HaltEvent; int DirName; int MinFreeSpace; } ;
typedef int THREAD ;
typedef TYPE_1__ ERASER ;


 int ELog (TYPE_1__*,char*,int ,char*) ;
 int EraserMain (TYPE_1__*) ;
 int GetEraserCheckInterval () ;
 int ToStrByte (char*,int,int ) ;
 int Wait (int ,int ) ;

void EraserThread(THREAD *t, void *p)
{
 ERASER *e = (ERASER *)p;
 char bs[64];

 if (t == ((void*)0) || e == ((void*)0))
 {
  return;
 }


 ToStrByte(bs, sizeof(bs), e->MinFreeSpace);
 ELog(e, "LE_START", e->DirName, bs);

 while (e->Halt == 0)
 {

  EraserMain(e);

  Wait(e->HaltEvent, GetEraserCheckInterval());
 }
}
