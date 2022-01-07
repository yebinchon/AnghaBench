
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 long DEVFS_LAZY_UPDATE_SECONDS ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static boolean_t
devfs_update_needed(long now_s, long last_s)
{
 if (now_s > last_s) {
  if (now_s - last_s >= DEVFS_LAZY_UPDATE_SECONDS) {
   return TRUE;
  }
 }

 return FALSE;
}
