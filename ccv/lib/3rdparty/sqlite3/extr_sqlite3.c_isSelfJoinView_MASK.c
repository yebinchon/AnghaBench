#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ viaCoroutine; } ;
struct SrcList_item {scalar_t__ zName; scalar_t__ zDatabase; TYPE_1__* pSelect; TYPE_2__ fg; } ;
struct TYPE_7__ {struct SrcList_item* a; } ;
struct TYPE_5__ {int /*<<< orphan*/  pWhere; } ;
typedef  TYPE_3__ SrcList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct SrcList_item *FUNC2(
  SrcList *pTabList,           /* Search for self-joins in this FROM clause */
  struct SrcList_item *pThis   /* Search for prior reference to this subquery */
){
  struct SrcList_item *pItem;
  for(pItem = pTabList->a; pItem<pThis; pItem++){
    if( pItem->pSelect==0 ) continue;
    if( pItem->fg.viaCoroutine ) continue;
    if( pItem->zName==0 ) continue;
    if( FUNC1(pItem->zDatabase, pThis->zDatabase)!=0 ) continue;
    if( FUNC1(pItem->zName, pThis->zName)!=0 ) continue;
    if( FUNC0(0, 
          pThis->pSelect->pWhere, pItem->pSelect->pWhere, -1) 
    ){
      /* The view was modified by some other optimization such as
      ** pushDownWhereTerms() */
      continue;
    }
    return pItem;
  }
  return 0;
}