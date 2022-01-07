
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_context ;
typedef int DateTime ;


 int SQLITE_UTF8 ;
 scalar_t__ parseHhMmSs (char const*,int *) ;
 scalar_t__ parseYyyyMmDd (char const*,int *) ;
 int setDateTimeToCurrent (int *,int *) ;
 int setRawDateNumber (int *,double) ;
 scalar_t__ sqlite3AtoF (char const*,double*,int ,int ) ;
 scalar_t__ sqlite3NotPureFunc (int *) ;
 scalar_t__ sqlite3StrICmp (char const*,char*) ;
 int sqlite3Strlen30 (char const*) ;

__attribute__((used)) static int parseDateOrTime(
  sqlite3_context *context,
  const char *zDate,
  DateTime *p
){
  double r;
  if( parseYyyyMmDd(zDate,p)==0 ){
    return 0;
  }else if( parseHhMmSs(zDate, p)==0 ){
    return 0;
  }else if( sqlite3StrICmp(zDate,"now")==0 && sqlite3NotPureFunc(context) ){
    return setDateTimeToCurrent(context, p);
  }else if( sqlite3AtoF(zDate, &r, sqlite3Strlen30(zDate), SQLITE_UTF8) ){
    setRawDateNumber(p, r);
    return 0;
  }
  return 1;
}
