
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_9__ {int iJD; scalar_t__ isError; } ;
typedef TYPE_1__ DateTime ;


 int SQLITE_FLOAT ;
 int SQLITE_INTEGER ;
 int computeJD (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ parseDateOrTime (int *,char*,TYPE_1__*) ;
 scalar_t__ parseModifier (int *,char*,int,TYPE_1__*) ;
 int setDateTimeToCurrent (int *,TYPE_1__*) ;
 int setRawDateNumber (TYPE_1__*,int ) ;
 int sqlite3_value_bytes (int *) ;
 int sqlite3_value_double (int *) ;
 unsigned char* sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;
 int validJulianDay (int ) ;

__attribute__((used)) static int isDate(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv,
  DateTime *p
){
  int i, n;
  const unsigned char *z;
  int eType;
  memset(p, 0, sizeof(*p));
  if( argc==0 ){
    return setDateTimeToCurrent(context, p);
  }
  if( (eType = sqlite3_value_type(argv[0]))==SQLITE_FLOAT
                   || eType==SQLITE_INTEGER ){
    setRawDateNumber(p, sqlite3_value_double(argv[0]));
  }else{
    z = sqlite3_value_text(argv[0]);
    if( !z || parseDateOrTime(context, (char*)z, p) ){
      return 1;
    }
  }
  for(i=1; i<argc; i++){
    z = sqlite3_value_text(argv[i]);
    n = sqlite3_value_bytes(argv[i]);
    if( z==0 || parseModifier(context, (char*)z, n, p) ) return 1;
  }
  computeJD(p);
  if( p->isError || !validJulianDay(p->iJD) ) return 1;
  return 0;
}
