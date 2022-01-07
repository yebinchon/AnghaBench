
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nRef; scalar_t__ h; int exclMask; int sharedMask; int mutex; } ;
typedef TYPE_1__ unixShmNode ;
typedef int u16 ;
struct flock {int l_type; int l_start; int l_len; int l_whence; } ;
typedef int f ;


 int F_RDLCK ;
 int F_SETLK ;
 int F_UNLCK ;
 int F_WRLCK ;
 int OSTRACE (char*) ;
 int SEEK_SET ;
 int SQLITE_BUSY ;
 int SQLITE_OK ;
 int SQLITE_SHM_NLOCK ;
 int assert (int) ;
 int memset (struct flock*,int ,int) ;
 int osFcntl (scalar_t__,int ,struct flock*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

__attribute__((used)) static int unixShmSystemLock(
  unixShmNode *pShmNode,
  int lockType,
  int ofst,
  int n
){
  struct flock f;
  int rc = SQLITE_OK;


  assert( sqlite3_mutex_held(pShmNode->mutex) || pShmNode->nRef==0 );


  assert( n==1 || lockType!=F_RDLCK );


  assert( n>=1 && n<SQLITE_SHM_NLOCK );

  if( pShmNode->h>=0 ){

    memset(&f, 0, sizeof(f));
    f.l_type = lockType;
    f.l_whence = SEEK_SET;
    f.l_start = ofst;
    f.l_len = n;

    rc = osFcntl(pShmNode->h, F_SETLK, &f);
    rc = (rc!=(-1)) ? SQLITE_OK : SQLITE_BUSY;
  }
  return rc;
}
