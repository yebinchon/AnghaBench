#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_5__ {int /*<<< orphan*/ * aLimit; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_6__ {int useMalloc; int /*<<< orphan*/  mxAlloc; } ;
typedef  TYPE_2__ StrAccum ;

/* Variables and functions */
 size_t SQLITE_LIMIT_LENGTH ; 
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *zVal;
  StrAccum *pAccum;
  const char *zSep;
  int nVal, nSep;
  FUNC0( argc==1 || argc==2 );
  if( FUNC6(argv[0])==SQLITE_NULL ) return;
  pAccum = (StrAccum*)FUNC2(context, sizeof(*pAccum));

  if( pAccum ){
    sqlite3 *db = FUNC3(context);
    int firstTerm = pAccum->useMalloc==0;
    pAccum->useMalloc = 2;
    pAccum->mxAlloc = db->aLimit[SQLITE_LIMIT_LENGTH];
    if( !firstTerm ){
      if( argc==2 ){
        zSep = (char*)FUNC5(argv[1]);
        nSep = FUNC4(argv[1]);
      }else{
        zSep = ",";
        nSep = 1;
      }
      FUNC1(pAccum, zSep, nSep);
    }
    zVal = (char*)FUNC5(argv[0]);
    nVal = FUNC4(argv[0]);
    FUNC1(pAccum, zVal, nVal);
  }
}