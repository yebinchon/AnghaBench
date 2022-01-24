#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int filterOnBinary; scalar_t__ lowerRelOptr; scalar_t__ upperRelOptr; scalar_t__ pz; scalar_t__ len; } ;
typedef  TYPE_1__ SColumnFilterInfo ;

/* Variables and functions */
 scalar_t__ TSDB_RELATION_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

void FUNC3(SColumnFilterInfo* dst, const SColumnFilterInfo* src) {
  FUNC0 (src != NULL && dst != NULL);

  FUNC0(src->filterOnBinary == 0 || src->filterOnBinary == 1);
  if (src->lowerRelOptr == TSDB_RELATION_INVALID && src->upperRelOptr == TSDB_RELATION_INVALID) {
    FUNC0(0);
  }

  *dst = *src;
  if (dst->filterOnBinary) {
    size_t len = (size_t) dst->len + 1;
    dst->pz = FUNC1(1, len);
    FUNC2((char*) dst->pz, (char*) src->pz, (size_t) len);
  }
}