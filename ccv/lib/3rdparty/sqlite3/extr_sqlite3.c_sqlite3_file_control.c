
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vfs ;
typedef int sqlite3_file ;
struct TYPE_5__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;
typedef int Pager ;
typedef int Btree ;


 int SQLITE_ERROR ;
 int SQLITE_FCNTL_FILE_POINTER ;
 int SQLITE_FCNTL_JOURNAL_POINTER ;
 int SQLITE_FCNTL_VFS_POINTER ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3BtreeEnter (int *) ;
 int sqlite3BtreeLeave (int *) ;
 int * sqlite3BtreePager (int *) ;
 int * sqlite3DbNameToBtree (TYPE_1__*,char const*) ;
 int sqlite3OsFileControl (int *,int,void*) ;
 int * sqlite3PagerFile (int *) ;
 int * sqlite3PagerJrnlFile (int *) ;
 int * sqlite3PagerVfs (int *) ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_file_control(sqlite3 *db, const char *zDbName, int op, void *pArg){
  int rc = SQLITE_ERROR;
  Btree *pBtree;




  sqlite3_mutex_enter(db->mutex);
  pBtree = sqlite3DbNameToBtree(db, zDbName);
  if( pBtree ){
    Pager *pPager;
    sqlite3_file *fd;
    sqlite3BtreeEnter(pBtree);
    pPager = sqlite3BtreePager(pBtree);
    assert( pPager!=0 );
    fd = sqlite3PagerFile(pPager);
    assert( fd!=0 );
    if( op==SQLITE_FCNTL_FILE_POINTER ){
      *(sqlite3_file**)pArg = fd;
      rc = SQLITE_OK;
    }else if( op==SQLITE_FCNTL_VFS_POINTER ){
      *(sqlite3_vfs**)pArg = sqlite3PagerVfs(pPager);
      rc = SQLITE_OK;
    }else if( op==SQLITE_FCNTL_JOURNAL_POINTER ){
      *(sqlite3_file**)pArg = sqlite3PagerJrnlFile(pPager);
      rc = SQLITE_OK;
    }else{
      rc = sqlite3OsFileControl(fd, op, pArg);
    }
    sqlite3BtreeLeave(pBtree);
  }
  sqlite3_mutex_leave(db->mutex);
  return rc;
}
