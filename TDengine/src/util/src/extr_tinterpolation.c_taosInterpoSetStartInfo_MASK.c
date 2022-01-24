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
typedef  scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ numOfRawDataInRows; scalar_t__ rowIdx; } ;
typedef  TYPE_1__ SInterpolationInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ TSDB_INTERPO_NONE ; 

void FUNC1(SInterpolationInfo* pInterpoInfo, int32_t numOfRawDataInRows, int32_t type) {
  if (type == TSDB_INTERPO_NONE) {
    return;
  }

  pInterpoInfo->rowIdx = FUNC0(pInterpoInfo) ? 0 : numOfRawDataInRows - 1;
  pInterpoInfo->numOfRawDataInRows = numOfRawDataInRows;
}