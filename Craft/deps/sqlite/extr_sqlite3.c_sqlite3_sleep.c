
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;


 int sqlite3OsSleep (int *,int) ;
 int * sqlite3_vfs_find (int ) ;

int sqlite3_sleep(int ms){
  sqlite3_vfs *pVfs;
  int rc;
  pVfs = sqlite3_vfs_find(0);
  if( pVfs==0 ) return 0;




  rc = (sqlite3OsSleep(pVfs, 1000*ms)/1000);
  return rc;
}
