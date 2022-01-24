#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  tFilePage ;
struct TYPE_5__ {int lastPageId; int numOfPages; scalar_t__ numOfMeters; } ;
typedef  TYPE_1__ SMeterQuerySupportObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static tFilePage *FUNC2(SMeterQuerySupportObj *pSupporter, uint32_t *pageId) {
  if (pSupporter->lastPageId == pSupporter->numOfPages - 1) {
    FUNC0(pSupporter, pSupporter->numOfPages + pSupporter->numOfMeters);
  }

  *pageId = (++pSupporter->lastPageId);
  return FUNC1(pSupporter, *pageId);
}