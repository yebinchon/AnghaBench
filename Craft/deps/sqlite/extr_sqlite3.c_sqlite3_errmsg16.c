
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char u16 ;
struct TYPE_4__ {int mutex; scalar_t__ mallocFailed; int pErr; int errCode; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_STATIC ;
 int SQLITE_UTF8 ;
 int sqlite3ErrStr (int ) ;
 int sqlite3SafetyCheckSickOrOk (TYPE_1__*) ;
 int sqlite3ValueSetStr (int ,int,int ,int ,int ) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 void* sqlite3_value_text16 (int ) ;

const void *sqlite3_errmsg16(sqlite3 *db){
  static const u16 outOfMem[] = {
    'o', 'u', 't', ' ', 'o', 'f', ' ', 'm', 'e', 'm', 'o', 'r', 'y', 0
  };
  static const u16 misuse[] = {
    'l', 'i', 'b', 'r', 'a', 'r', 'y', ' ',
    'r', 'o', 'u', 't', 'i', 'n', 'e', ' ',
    'c', 'a', 'l', 'l', 'e', 'd', ' ',
    'o', 'u', 't', ' ',
    'o', 'f', ' ',
    's', 'e', 'q', 'u', 'e', 'n', 'c', 'e', 0
  };

  const void *z;
  if( !db ){
    return (void *)outOfMem;
  }
  if( !sqlite3SafetyCheckSickOrOk(db) ){
    return (void *)misuse;
  }
  sqlite3_mutex_enter(db->mutex);
  if( db->mallocFailed ){
    z = (void *)outOfMem;
  }else{
    z = sqlite3_value_text16(db->pErr);
    if( z==0 ){
      sqlite3ValueSetStr(db->pErr, -1, sqlite3ErrStr(db->errCode),
           SQLITE_UTF8, SQLITE_STATIC);
      z = sqlite3_value_text16(db->pErr);
    }





    db->mallocFailed = 0;
  }
  sqlite3_mutex_leave(db->mutex);
  return z;
}
