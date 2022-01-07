
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;


 int SQLITE_DYNAMIC ;
 int TK_REFERENCES ;
 int TK_SPACE ;
 int UNUSED_PARAMETER (int) ;
 int sqlite3DbFree (int *,char*) ;
 char* sqlite3DbStrNDup (int *,char const*,int) ;
 int sqlite3Dequote (char*) ;
 int sqlite3GetToken (unsigned char const*,int*) ;
 char* sqlite3MPrintf (int *,char*,char*,...) ;
 scalar_t__ sqlite3StrICmp (char const*,char*) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 unsigned char* sqlite3_value_text (int *) ;

__attribute__((used)) static void renameParentFunc(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  sqlite3 *db = sqlite3_context_db_handle(context);
  char *zOutput = 0;
  char *zResult;
  unsigned char const *zInput = sqlite3_value_text(argv[0]);
  unsigned char const *zOld = sqlite3_value_text(argv[1]);
  unsigned char const *zNew = sqlite3_value_text(argv[2]);

  unsigned const char *z;
  int n;
  int token;

  UNUSED_PARAMETER(NotUsed);
  for(z=zInput; *z; z=z+n){
    n = sqlite3GetToken(z, &token);
    if( token==TK_REFERENCES ){
      char *zParent;
      do {
        z += n;
        n = sqlite3GetToken(z, &token);
      }while( token==TK_SPACE );

      zParent = sqlite3DbStrNDup(db, (const char *)z, n);
      if( zParent==0 ) break;
      sqlite3Dequote(zParent);
      if( 0==sqlite3StrICmp((const char *)zOld, zParent) ){
        char *zOut = sqlite3MPrintf(db, "%s%.*s\"%w\"",
            (zOutput?zOutput:""), z-zInput, zInput, (const char *)zNew
        );
        sqlite3DbFree(db, zOutput);
        zOutput = zOut;
        zInput = &z[n];
      }
      sqlite3DbFree(db, zParent);
    }
  }

  zResult = sqlite3MPrintf(db, "%s%s", (zOutput?zOutput:""), zInput),
  sqlite3_result_text(context, zResult, -1, SQLITE_DYNAMIC);
  sqlite3DbFree(db, zOutput);
}
