
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_BUSY ;
 int SQLITE_IOERR_BLOCKED ;
 int SQLITE_IOERR_CHECKRESERVEDLOCK ;
 int SQLITE_IOERR_LOCK ;
 int SQLITE_IOERR_RDLOCK ;
 int SQLITE_IOERR_UNLOCK ;
 int SQLITE_OK ;
 int SQLITE_PERM ;

__attribute__((used)) static int sqliteErrorFromPosixError(int posixError, int sqliteIOErr) {
  switch (posixError) {
  case 145:
  case 128:
  case 143:
  case 141:
  case 136:


    return SQLITE_BUSY;

  case 146:

    if( (sqliteIOErr == SQLITE_IOERR_LOCK) ||
        (sqliteIOErr == SQLITE_IOERR_UNLOCK) ||
        (sqliteIOErr == SQLITE_IOERR_RDLOCK) ||
        (sqliteIOErr == SQLITE_IOERR_CHECKRESERVEDLOCK) ){
      return SQLITE_BUSY;
    }

  case 130:
    return SQLITE_PERM;
  case 131:




  case 133:



  case 139:
  case 144:
  case 140:
  case 134:
  case 138:
  case 132:
  case 137:

  case 129:

  case 135:


  default:
    return sqliteIOErr;
  }
}
