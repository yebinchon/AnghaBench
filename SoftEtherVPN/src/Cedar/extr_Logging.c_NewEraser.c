
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dir ;
typedef scalar_t__ UINT64 ;
struct TYPE_7__ {int OsType; } ;
struct TYPE_6__ {int Thread; int HaltEvent; int DirName; scalar_t__ MinFreeSpace; int * Log; } ;
typedef int LOG ;
typedef TYPE_1__ ERASER ;


 int CopyStr (char*) ;
 scalar_t__ DISK_FREE_SPACE_DEFAULT ;
 scalar_t__ DISK_FREE_SPACE_DEFAULT_WINDOWS ;
 scalar_t__ DISK_FREE_SPACE_MIN ;
 int EraserThread ;
 int GetExeDir (char*,int) ;
 TYPE_5__* GetOsInfo () ;
 int MAX_PATH ;
 int NewEvent () ;
 int NewThread (int ,TYPE_1__*) ;
 scalar_t__ OS_IS_WINDOWS (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

ERASER *NewEraser(LOG *log, UINT64 min_size)
{
 ERASER *e;
 char dir[MAX_PATH];

 if (min_size == 0)
 {
  if (OS_IS_WINDOWS(GetOsInfo()->OsType))
  {
   min_size = DISK_FREE_SPACE_DEFAULT_WINDOWS;
  }
  else
  {
   min_size = DISK_FREE_SPACE_DEFAULT;
  }
 }

 if (min_size < DISK_FREE_SPACE_MIN)
 {
  min_size = DISK_FREE_SPACE_MIN;
 }

 e = ZeroMalloc(sizeof(ERASER));

 GetExeDir(dir, sizeof(dir));

 e->Log = log;
 e->MinFreeSpace = min_size;
 e->DirName = CopyStr(dir);
 e->HaltEvent = NewEvent();

 e->Thread = NewThread(EraserThread, e);

 return e;
}
