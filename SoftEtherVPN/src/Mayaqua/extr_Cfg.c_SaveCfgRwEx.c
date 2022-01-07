
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int DontBackup; int lock; int FileNameW; int * Io; } ;
typedef int FOLDER ;
typedef TYPE_1__ CFG_RW ;


 int BackupCfgWEx (TYPE_1__*,int *,int ,scalar_t__) ;
 scalar_t__ CfgSaveExW2 (TYPE_1__*,int *,int ,scalar_t__*) ;
 int FileClose (int *) ;
 int * FileOpenW (int ,int) ;
 int Lock (int ) ;
 int Unlock (int ) ;

UINT SaveCfgRwEx(CFG_RW *rw, FOLDER *f, UINT revision_number)
{
 UINT ret = 0;

 if (rw == ((void*)0) || f == ((void*)0))
 {
  return 0;
 }

 Lock(rw->lock);
 {
  if (rw->Io != ((void*)0))
  {
   FileClose(rw->Io);
   rw->Io = ((void*)0);
  }

  if (CfgSaveExW2(rw, f, rw->FileNameW, &ret))
  {
   if (rw->DontBackup == 0)
   {
    BackupCfgWEx(rw, f, rw->FileNameW, revision_number);
   }
  }
  else
  {
   ret = 0;
  }

  rw->Io = FileOpenW(rw->FileNameW, 0);
 }
 Unlock(rw->lock);

 return ret;
}
