#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char const u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_2__ {char* z; int n; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_DYNAMIC ; 
 int TK_LP ; 
 int TK_SPACE ; 
 int TK_USING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned char const*,int*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int,unsigned char const*,unsigned char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  unsigned char const *zSql = FUNC6(argv[0]);
  unsigned char const *zTableName = FUNC6(argv[1]);

  int token;
  Token tname;
  unsigned char const *zCsr = zSql;
  int len = 0;
  char *zRet;

  sqlite3 *db = FUNC4(context);

  FUNC0(NotUsed);

  /* The principle used to locate the table name in the CREATE TABLE 
  ** statement is that the table name is the first non-space token that
  ** is immediately followed by a TK_LP or TK_USING token.
  */
  if( zSql ){
    do {
      if( !*zCsr ){
        /* Ran out of input before finding an opening bracket. Return NULL. */
        return;
      }

      /* Store the token that zCsr points to in tname. */
      tname.z = (char*)zCsr;
      tname.n = len;

      /* Advance zCsr to the next token. Store that token type in 'token',
      ** and its length in 'len' (to be used next iteration of this loop).
      */
      do {
        zCsr += len;
        len = FUNC2(zCsr, &token);
      } while( token==TK_SPACE );
      FUNC1( len>0 );
    } while( token!=TK_LP && token!=TK_USING );

    zRet = FUNC3(db, "%.*s\"%w\"%s", (int)(((u8*)tname.z) - zSql),
       zSql, zTableName, tname.z+tname.n);
    FUNC5(context, zRet, -1, SQLITE_DYNAMIC);
  }
}