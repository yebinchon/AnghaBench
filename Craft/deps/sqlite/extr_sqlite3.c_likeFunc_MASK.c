#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct compareInfo {int dummy; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {int* aLimit; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 size_t SQLITE_LIMIT_LIKE_PATTERN_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,struct compareInfo*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const**) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqlite3_like_count ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct compareInfo* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned char const* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(
  sqlite3_context *context, 
  int argc, 
  sqlite3_value **argv
){
  const unsigned char *zA, *zB;
  u32 escape = 0;
  int nPat;
  sqlite3 *db = FUNC4(context);

  zB = FUNC9(argv[0]);
  zA = FUNC9(argv[1]);

  /* Limit the length of the LIKE or GLOB pattern to avoid problems
  ** of deep recursion and N*N behavior in patternCompare().
  */
  nPat = FUNC8(argv[0]);
  FUNC10( nPat==db->aLimit[SQLITE_LIMIT_LIKE_PATTERN_LENGTH] );
  FUNC10( nPat==db->aLimit[SQLITE_LIMIT_LIKE_PATTERN_LENGTH]+1 );
  if( nPat > db->aLimit[SQLITE_LIMIT_LIKE_PATTERN_LENGTH] ){
    FUNC5(context, "LIKE or GLOB pattern too complex", -1);
    return;
  }
  FUNC0( zB==FUNC9(argv[0]) );  /* Encoding did not change */

  if( argc==3 ){
    /* The escape character string must consist of a single UTF-8 character.
    ** Otherwise, return an error.
    */
    const unsigned char *zEsc = FUNC9(argv[2]);
    if( zEsc==0 ) return;
    if( FUNC2((char*)zEsc, -1)!=1 ){
      FUNC5(context, 
          "ESCAPE expression must be a single character", -1);
      return;
    }
    escape = FUNC3(&zEsc);
  }
  if( zA && zB ){
    struct compareInfo *pInfo = FUNC7(context);
#ifdef SQLITE_TEST
    sqlite3_like_count++;
#endif
    
    FUNC6(context, FUNC1(zB, zA, pInfo, escape));
  }
}