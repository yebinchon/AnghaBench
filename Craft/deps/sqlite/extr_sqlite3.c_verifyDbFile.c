
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ctrlFlags; int zPath; TYPE_2__* pInode; int h; } ;
typedef TYPE_3__ unixFile ;
struct stat {int st_nlink; scalar_t__ st_ino; } ;
struct TYPE_5__ {scalar_t__ ino; } ;
struct TYPE_6__ {TYPE_1__ fileId; } ;


 int SQLITE_WARNING ;
 int UNIXFILE_DELETE ;
 int UNIXFILE_WARNED ;
 int osFstat (int ,struct stat*) ;
 int osStat (int ,struct stat*) ;
 int sqlite3_log (int ,char*,int ) ;

__attribute__((used)) static void verifyDbFile(unixFile *pFile){
  struct stat buf;
  int rc;
  if( pFile->ctrlFlags & UNIXFILE_WARNED ){


    return;
  }
  rc = osFstat(pFile->h, &buf);
  if( rc!=0 ){
    sqlite3_log(SQLITE_WARNING, "cannot fstat db file %s", pFile->zPath);
    pFile->ctrlFlags |= UNIXFILE_WARNED;
    return;
  }
  if( buf.st_nlink==0 && (pFile->ctrlFlags & UNIXFILE_DELETE)==0 ){
    sqlite3_log(SQLITE_WARNING, "file unlinked while open: %s", pFile->zPath);
    pFile->ctrlFlags |= UNIXFILE_WARNED;
    return;
  }
  if( buf.st_nlink>1 ){
    sqlite3_log(SQLITE_WARNING, "multiple links to file: %s", pFile->zPath);
    pFile->ctrlFlags |= UNIXFILE_WARNED;
    return;
  }
  if( pFile->pInode!=0
   && ((rc = osStat(pFile->zPath, &buf))!=0
       || buf.st_ino!=pFile->pInode->fileId.ino)
  ){
    sqlite3_log(SQLITE_WARNING, "file renamed while open: %s", pFile->zPath);
    pFile->ctrlFlags |= UNIXFILE_WARNED;
    return;
  }
}
