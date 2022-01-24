#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int nDb; TYPE_2__* aDb; } ;
typedef  TYPE_4__ sqlite3 ;
struct TYPE_19__ {char const* zTarget; TYPE_1__* pTrig; } ;
typedef  TYPE_5__ TriggerStep ;
struct TYPE_21__ {TYPE_4__* db; } ;
struct TYPE_20__ {int nSrc; TYPE_3__* a; } ;
struct TYPE_17__ {void* zDatabase; void* zName; } ;
struct TYPE_16__ {char* zDbSName; } ;
struct TYPE_15__ {int /*<<< orphan*/  pSchema; } ;
typedef  TYPE_6__ SrcList ;
typedef  TYPE_7__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_4__*,char const*) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SrcList *FUNC4(
  Parse *pParse,       /* The parsing context */
  TriggerStep *pStep   /* The trigger containing the target token */
){
  sqlite3 *db = pParse->db;
  int iDb;             /* Index of the database to use */
  SrcList *pSrc;       /* SrcList to be returned */

  pSrc = FUNC3(db, 0, 0, 0);
  if( pSrc ){
    FUNC0( pSrc->nSrc>0 );
    pSrc->a[pSrc->nSrc-1].zName = FUNC1(db, pStep->zTarget);
    iDb = FUNC2(db, pStep->pTrig->pSchema);
    if( iDb==0 || iDb>=2 ){
      const char *zDb;
      FUNC0( iDb<db->nDb );
      zDb = db->aDb[iDb].zDbSName;
      pSrc->a[pSrc->nSrc-1].zDatabase =  FUNC1(db, zDb);
    }
  }
  return pSrc;
}