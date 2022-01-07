
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LockModeToStringType {scalar_t__ lockMode; char* name; } ;
typedef scalar_t__ LOCKMODE ;


 int ERRCODE_LOCK_NOT_AVAILABLE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int lock_mode_to_string_map_count ;
 struct LockModeToStringType* lockmode_to_string_map ;

const char *
LockModeToLockModeText(LOCKMODE lockMode)
{
 const char *lockModeText = ((void*)0);

 int lockIndex = 0;
 for (lockIndex = 0; lockIndex < lock_mode_to_string_map_count; lockIndex++)
 {
  const struct LockModeToStringType *lockMap = lockmode_to_string_map + lockIndex;
  if (lockMode == lockMap->lockMode)
  {
   lockModeText = lockMap->name;
   break;
  }
 }


 if (lockModeText == ((void*)0))
 {
  ereport(ERROR,
    (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
     errmsg("unknown lock mode enum: %d", (int) lockMode)));
 }

 return lockModeText;
}
