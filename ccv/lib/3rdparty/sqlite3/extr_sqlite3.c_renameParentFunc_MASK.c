#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_DYNAMIC ; 
 int TK_ILLEGAL ; 
 int TK_REFERENCES ; 
 int TK_SPACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (unsigned char const*,int*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,char*,...) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  sqlite3 *db = FUNC7(context);
  char *zOutput = 0;
  char *zResult;
  unsigned char const *zInput = FUNC9(argv[0]);
  unsigned char const *zOld = FUNC9(argv[1]);
  unsigned char const *zNew = FUNC9(argv[2]);

  unsigned const char *z;         /* Pointer to token */
  int n;                          /* Length of token z */
  int token;                      /* Type of token */

  FUNC0(NotUsed);
  if( zInput==0 || zOld==0 ) return;
  for(z=zInput; *z; z=z+n){
    n = FUNC4(z, &token);
    if( token==TK_REFERENCES ){
      char *zParent;
      do {
        z += n;
        n = FUNC4(z, &token);
      }while( token==TK_SPACE );

      if( token==TK_ILLEGAL ) break;
      zParent = FUNC2(db, (const char *)z, n);
      if( zParent==0 ) break;
      FUNC3(zParent);
      if( 0==FUNC6((const char *)zOld, zParent) ){
        char *zOut = FUNC5(db, "%s%.*s\"%w\"", 
            (zOutput?zOutput:""), (int)(z-zInput), zInput, (const char *)zNew
        );
        FUNC1(db, zOutput);
        zOutput = zOut;
        zInput = &z[n];
      }
      FUNC1(db, zParent);
    }
  }

  zResult = FUNC5(db, "%s%s", (zOutput?zOutput:""), zInput), 
  FUNC8(context, zResult, -1, SQLITE_DYNAMIC);
  FUNC1(db, zOutput);
}