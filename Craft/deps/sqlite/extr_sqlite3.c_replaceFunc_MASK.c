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
typedef  unsigned char u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {int* aLimit; scalar_t__ mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int i64 ;

/* Variables and functions */
 size_t SQLITE_LIMIT_LENGTH ; 
 int SQLITE_MAX_LENGTH ; 
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (unsigned char const*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char const*,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/  (*) (unsigned char*)) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 unsigned char const* FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zStr;        /* The input string A */
  const unsigned char *zPattern;    /* The pattern string B */
  const unsigned char *zRep;        /* The replacement string C */
  unsigned char *zOut;              /* The output */
  int nStr;                /* Size of zStr */
  int nPattern;            /* Size of zPattern */
  int nRep;                /* Size of zRep */
  i64 nOut;                /* Maximum size of zOut */
  int loopLimit;           /* Last zStr[] that might match zPattern[] */
  int i, j;                /* Loop counters */

  FUNC1( argc==3 );
  FUNC0(argc);
  zStr = FUNC13(argv[0]);
  if( zStr==0 ) return;
  nStr = FUNC12(argv[0]);
  FUNC1( zStr==FUNC13(argv[0]) );  /* No encoding change */
  zPattern = FUNC13(argv[1]);
  if( zPattern==0 ){
    FUNC1( FUNC14(argv[1])==SQLITE_NULL
            || FUNC5(context)->mallocFailed );
    return;
  }
  if( zPattern[0]==0 ){
    FUNC1( FUNC14(argv[1])!=SQLITE_NULL );
    FUNC11(context, argv[0]);
    return;
  }
  nPattern = FUNC12(argv[1]);
  FUNC1( zPattern==FUNC13(argv[1]) );  /* No encoding change */
  zRep = FUNC13(argv[2]);
  if( zRep==0 ) return;
  nRep = FUNC12(argv[2]);
  FUNC1( zRep==FUNC13(argv[2]) );
  nOut = nStr + 1;
  FUNC1( nOut<SQLITE_MAX_LENGTH );
  zOut = FUNC2(context, (i64)nOut);
  if( zOut==0 ){
    return;
  }
  loopLimit = nStr - nPattern;  
  for(i=j=0; i<=loopLimit; i++){
    if( zStr[i]!=zPattern[0] || FUNC3(&zStr[i], zPattern, nPattern) ){
      zOut[j++] = zStr[i];
    }else{
      u8 *zOld;
      sqlite3 *db = FUNC5(context);
      nOut += nRep - nPattern;
      FUNC15( nOut-1==db->aLimit[SQLITE_LIMIT_LENGTH] );
      FUNC15( nOut-2==db->aLimit[SQLITE_LIMIT_LENGTH] );
      if( nOut-1>db->aLimit[SQLITE_LIMIT_LENGTH] ){
        FUNC9(context);
        FUNC6(zOut);
        return;
      }
      zOld = zOut;
      zOut = FUNC7(zOut, (int)nOut);
      if( zOut==0 ){
        FUNC8(context);
        FUNC6(zOld);
        return;
      }
      FUNC4(&zOut[j], zRep, nRep);
      j += nRep;
      i += nPattern-1;
    }
  }
  FUNC1( j+nStr-i+1==nOut );
  FUNC4(&zOut[j], &zStr[i], nStr-i);
  j += nStr - i;
  FUNC1( j<=nOut );
  zOut[j] = 0;
  FUNC10(context, (char*)zOut, j, sqlite3_free);
}