
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_5__ {int * aLimit; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_6__ {int useMalloc; int mxAlloc; } ;
typedef TYPE_2__ StrAccum ;


 size_t SQLITE_LIMIT_LENGTH ;
 scalar_t__ SQLITE_NULL ;
 int assert (int) ;
 int sqlite3StrAccumAppend (TYPE_2__*,char const*,int) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 TYPE_1__* sqlite3_context_db_handle (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void groupConcatStep(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *zVal;
  StrAccum *pAccum;
  const char *zSep;
  int nVal, nSep;
  assert( argc==1 || argc==2 );
  if( sqlite3_value_type(argv[0])==SQLITE_NULL ) return;
  pAccum = (StrAccum*)sqlite3_aggregate_context(context, sizeof(*pAccum));

  if( pAccum ){
    sqlite3 *db = sqlite3_context_db_handle(context);
    int firstTerm = pAccum->useMalloc==0;
    pAccum->useMalloc = 2;
    pAccum->mxAlloc = db->aLimit[SQLITE_LIMIT_LENGTH];
    if( !firstTerm ){
      if( argc==2 ){
        zSep = (char*)sqlite3_value_text(argv[1]);
        nSep = sqlite3_value_bytes(argv[1]);
      }else{
        zSep = ",";
        nSep = 1;
      }
      sqlite3StrAccumAppend(pAccum, zSep, nSep);
    }
    zVal = (char*)sqlite3_value_text(argv[0]);
    nVal = sqlite3_value_bytes(argv[0]);
    sqlite3StrAccumAppend(pAccum, zVal, nVal);
  }
}
