
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOCKMODE ;


 int AccessShareLock ;
 int ERROR ;
 int ExclusiveLock ;
 int RowExclusiveLock ;
 int ShareLock ;
 int elog (int ,char*,int) ;

__attribute__((used)) static LOCKMODE
IntToLockMode(int mode)
{
 if (mode == ExclusiveLock)
 {
  return ExclusiveLock;
 }
 else if (mode == ShareLock)
 {
  return ShareLock;
 }
 else if (mode == AccessShareLock)
 {
  return AccessShareLock;
 }
 else if (mode == RowExclusiveLock)
 {
  return RowExclusiveLock;
 }
 else
 {
  elog(ERROR, "unsupported lockmode %d", mode);
 }
}
