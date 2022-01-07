
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LockModeToStringType {int lockMode; int name; } ;
typedef int LOCKMODE ;


 int ERRCODE_LOCK_NOT_AVAILABLE ;
 int ERROR ;
 int NAMEDATALEN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int lock_mode_to_string_map_count ;
 struct LockModeToStringType* lockmode_to_string_map ;
 scalar_t__ pg_strncasecmp (int ,char const*,int ) ;

LOCKMODE
LockModeTextToLockMode(const char *lockModeName)
{
 LOCKMODE lockMode = -1;

 int lockIndex = 0;
 for (lockIndex = 0; lockIndex < lock_mode_to_string_map_count; lockIndex++)
 {
  const struct LockModeToStringType *lockMap = lockmode_to_string_map + lockIndex;
  if (pg_strncasecmp(lockMap->name, lockModeName, NAMEDATALEN) == 0)
  {
   lockMode = lockMap->lockMode;
   break;
  }
 }


 if (lockMode == -1)
 {
  ereport(ERROR,
    (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
     errmsg("unknown lock mode: %s", lockModeName)));
 }

 return lockMode;
}
