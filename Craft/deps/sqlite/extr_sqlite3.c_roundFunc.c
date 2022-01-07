
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int LARGEST_INT64 ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int sqlite3AtoF (char*,double*,int ,int ) ;
 int sqlite3Strlen30 (char*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int,double) ;
 int sqlite3_result_double (int *,double) ;
 int sqlite3_result_error_nomem (int *) ;
 double sqlite3_value_double (int *) ;
 int sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void roundFunc(sqlite3_context *context, int argc, sqlite3_value **argv){
  int n = 0;
  double r;
  char *zBuf;
  assert( argc==1 || argc==2 );
  if( argc==2 ){
    if( SQLITE_NULL==sqlite3_value_type(argv[1]) ) return;
    n = sqlite3_value_int(argv[1]);
    if( n>30 ) n = 30;
    if( n<0 ) n = 0;
  }
  if( sqlite3_value_type(argv[0])==SQLITE_NULL ) return;
  r = sqlite3_value_double(argv[0]);




  if( n==0 && r>=0 && r<LARGEST_INT64-1 ){
    r = (double)((sqlite_int64)(r+0.5));
  }else if( n==0 && r<0 && (-r)<LARGEST_INT64-1 ){
    r = -(double)((sqlite_int64)((-r)+0.5));
  }else{
    zBuf = sqlite3_mprintf("%.*f",n,r);
    if( zBuf==0 ){
      sqlite3_result_error_nomem(context);
      return;
    }
    sqlite3AtoF(zBuf, &r, sqlite3Strlen30(zBuf), SQLITE_UTF8);
    sqlite3_free(zBuf);
  }
  sqlite3_result_double(context, r);
}
