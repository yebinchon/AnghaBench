
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int bs ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int LastFailed; int MinFreeSpace; } ;
struct TYPE_8__ {int FullPath; } ;
typedef int LIST ;
typedef TYPE_1__ ERASE_FILE ;
typedef TYPE_2__ ERASER ;


 scalar_t__ CheckEraserDiskFreeSpace (TYPE_2__*) ;
 int ELog (TYPE_2__*,char*,char*,...) ;
 scalar_t__ FileDelete (int ) ;
 int FreeEraseFileList (int *) ;
 int * GenerateEraseFileList (TYPE_2__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ToStrByte (char*,int,int ) ;

void EraserMain(ERASER *e)
{
 LIST *o;
 UINT i;
 bool ok = 0;
 char bs[64];

 if (e == ((void*)0))
 {
  return;
 }


 if (CheckEraserDiskFreeSpace(e))
 {

  return;
 }

 ToStrByte(bs, sizeof(bs), e->MinFreeSpace);


 o = GenerateEraseFileList(e);


 for (i = 0;i < LIST_NUM(o);i++)
 {
  ERASE_FILE *f = LIST_DATA(o, i);


  if (FileDelete(f->FullPath))
  {
   ELog(e, "LE_DELETE", bs, f->FullPath);
  }


  if (CheckEraserDiskFreeSpace(e))
  {

   ok = 1;
   break;
  }
 }


 FreeEraseFileList(o);

 if (e->LastFailed == 0 && ok == 0)
 {

  ELog(e, "LE_NOT_ENOUGH_FREE", bs);
 }

 e->LastFailed = ok ? 0 : 1;
}
