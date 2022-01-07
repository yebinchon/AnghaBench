
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int szOsFile; int mxPathname; } ;
typedef TYPE_1__ sqlite3_vfs ;
typedef char sqlite3_file ;
typedef int i64 ;
struct TYPE_8__ {TYPE_1__* pVfs; } ;
typedef TYPE_2__ Pager ;


 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_OPEN_MAIN_JOURNAL ;
 int SQLITE_OPEN_MASTER_JOURNAL ;
 int SQLITE_OPEN_READONLY ;
 int assert (int) ;
 int isOpen (char*) ;
 int readMasterJournal (char*,char*,int) ;
 char* sqlite3Malloc (int) ;
 scalar_t__ sqlite3MallocZero (int) ;
 int sqlite3OsAccess (TYPE_1__*,char*,int ,int*) ;
 int sqlite3OsClose (char*) ;
 int sqlite3OsDelete (TYPE_1__*,char const*,int ) ;
 int sqlite3OsFileSize (char*,int*) ;
 int sqlite3OsOpen (TYPE_1__*,char const*,char*,int const,int ) ;
 int sqlite3OsRead (char*,char*,int,int ) ;
 scalar_t__ sqlite3Strlen30 (char*) ;
 int sqlite3_free (char*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int pager_delmaster(Pager *pPager, const char *zMaster){
  sqlite3_vfs *pVfs = pPager->pVfs;
  int rc;
  sqlite3_file *pMaster;
  sqlite3_file *pJournal;
  char *zMasterJournal = 0;
  i64 nMasterJournal;
  char *zJournal;
  char *zMasterPtr;
  int nMasterPtr;




  pMaster = (sqlite3_file *)sqlite3MallocZero(pVfs->szOsFile * 2);
  pJournal = (sqlite3_file *)(((u8 *)pMaster) + pVfs->szOsFile);
  if( !pMaster ){
    rc = SQLITE_NOMEM;
  }else{
    const int flags = (SQLITE_OPEN_READONLY|SQLITE_OPEN_MASTER_JOURNAL);
    rc = sqlite3OsOpen(pVfs, zMaster, pMaster, flags, 0);
  }
  if( rc!=SQLITE_OK ) goto delmaster_out;






  rc = sqlite3OsFileSize(pMaster, &nMasterJournal);
  if( rc!=SQLITE_OK ) goto delmaster_out;
  nMasterPtr = pVfs->mxPathname+1;
  zMasterJournal = sqlite3Malloc((int)nMasterJournal + nMasterPtr + 1);
  if( !zMasterJournal ){
    rc = SQLITE_NOMEM;
    goto delmaster_out;
  }
  zMasterPtr = &zMasterJournal[nMasterJournal+1];
  rc = sqlite3OsRead(pMaster, zMasterJournal, (int)nMasterJournal, 0);
  if( rc!=SQLITE_OK ) goto delmaster_out;
  zMasterJournal[nMasterJournal] = 0;

  zJournal = zMasterJournal;
  while( (zJournal-zMasterJournal)<nMasterJournal ){
    int exists;
    rc = sqlite3OsAccess(pVfs, zJournal, SQLITE_ACCESS_EXISTS, &exists);
    if( rc!=SQLITE_OK ){
      goto delmaster_out;
    }
    if( exists ){




      int c;
      int flags = (SQLITE_OPEN_READONLY|SQLITE_OPEN_MAIN_JOURNAL);
      rc = sqlite3OsOpen(pVfs, zJournal, pJournal, flags, 0);
      if( rc!=SQLITE_OK ){
        goto delmaster_out;
      }

      rc = readMasterJournal(pJournal, zMasterPtr, nMasterPtr);
      sqlite3OsClose(pJournal);
      if( rc!=SQLITE_OK ){
        goto delmaster_out;
      }

      c = zMasterPtr[0]!=0 && strcmp(zMasterPtr, zMaster)==0;
      if( c ){

        goto delmaster_out;
      }
    }
    zJournal += (sqlite3Strlen30(zJournal)+1);
  }

  sqlite3OsClose(pMaster);
  rc = sqlite3OsDelete(pVfs, zMaster, 0);

delmaster_out:
  sqlite3_free(zMasterJournal);
  if( pMaster ){
    sqlite3OsClose(pMaster);
    assert( !isOpen(pJournal) );
    sqlite3_free(pMaster);
  }
  return rc;
}
