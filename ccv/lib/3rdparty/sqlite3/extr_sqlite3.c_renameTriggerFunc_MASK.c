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
 int TK_BEGIN ; 
 int TK_DOT ; 
 int TK_FOR ; 
 int TK_ON ; 
 int TK_SPACE ; 
 int TK_WHEN ; 
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
  int dist = 3;
  unsigned char const *zCsr = zSql;
  int len = 0;
  char *zRet;
  sqlite3 *db = FUNC4(context);

  FUNC0(NotUsed);

  /* The principle used to locate the table name in the CREATE TRIGGER 
  ** statement is that the table name is the first token that is immediately
  ** preceded by either TK_ON or TK_DOT and immediately followed by one
  ** of TK_WHEN, TK_BEGIN or TK_FOR.
  */
  if( zSql ){
    do {

      if( !*zCsr ){
        /* Ran out of input before finding the table name. Return NULL. */
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
      }while( token==TK_SPACE );
      FUNC1( len>0 );

      /* Variable 'dist' stores the number of tokens read since the most
      ** recent TK_DOT or TK_ON. This means that when a WHEN, FOR or BEGIN 
      ** token is read and 'dist' equals 2, the condition stated above
      ** to be met.
      **
      ** Note that ON cannot be a database, table or column name, so
      ** there is no need to worry about syntax like 
      ** "CREATE TRIGGER ... ON ON.ON BEGIN ..." etc.
      */
      dist++;
      if( token==TK_DOT || token==TK_ON ){
        dist = 0;
      }
    } while( dist!=2 || (token!=TK_WHEN && token!=TK_FOR && token!=TK_BEGIN) );

    /* Variable tname now contains the token that is the old table-name
    ** in the CREATE TRIGGER statement.
    */
    zRet = FUNC3(db, "%.*s\"%w\"%s", (int)(((u8*)tname.z) - zSql),
       zSql, zTableName, tname.z+tname.n);
    FUNC5(context, zRet, -1, SQLITE_DYNAMIC);
  }
}