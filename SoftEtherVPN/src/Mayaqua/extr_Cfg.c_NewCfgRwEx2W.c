
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int DontBackup; void* lock; void* Io; void* FileName; void* FileNameW; } ;
typedef int FOLDER ;
typedef TYPE_1__ CFG_RW ;


 int * CfgReadW (int *) ;
 void* CopyUniStr (int *) ;
 void* CopyUniToStr (int *) ;
 void* FileCreateW (int *) ;
 void* FileOpenW (int *,int) ;
 void* NewLock () ;
 int UniIsEmptyStr (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

CFG_RW *NewCfgRwEx2W(FOLDER **root, wchar_t *cfg_name, bool dont_backup, wchar_t *template_name)
{
 CFG_RW *rw;
 FOLDER *f;
 bool loaded_from_template = 0;

 if (cfg_name == ((void*)0) || root == ((void*)0))
 {
  return ((void*)0);
 }

 f = CfgReadW(cfg_name);
 if (f == ((void*)0))
 {

  if (UniIsEmptyStr(template_name) == 0)
  {
   f = CfgReadW(template_name);
   if (f != ((void*)0))
   {
    loaded_from_template = 1;

    goto LABEL_CONTINUE;
   }
  }

  rw = ZeroMalloc(sizeof(CFG_RW));
  rw->lock = NewLock();
  rw->FileNameW = CopyUniStr(cfg_name);
  rw->FileName = CopyUniToStr(cfg_name);
  rw->Io = FileCreateW(cfg_name);
  *root = ((void*)0);
  rw->DontBackup = dont_backup;

  return rw;
 }

LABEL_CONTINUE:
 rw = ZeroMalloc(sizeof(CFG_RW));
 rw->FileNameW = CopyUniStr(cfg_name);
 rw->FileName = CopyUniToStr(cfg_name);
 if (loaded_from_template == 0)
 {
  rw->Io = FileOpenW(cfg_name, 0);
 }
 else
 {
  rw->Io = FileCreateW(cfg_name);
 }
 rw->lock = NewLock();

 *root = f;

 rw->DontBackup = dont_backup;

 return rw;
}
