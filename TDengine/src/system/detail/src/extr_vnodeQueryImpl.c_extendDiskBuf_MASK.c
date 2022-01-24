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
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {int numOfPages; int bufSize; int /*<<< orphan*/  meterOutputFd; int /*<<< orphan*/  meterOutputMMapBuf; } ;
typedef  TYPE_1__ SMeterQuerySupportObj ;

/* Variables and functions */
 int DEFAULT_INTERN_BUF_SIZE ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(SMeterQuerySupportObj *pSupporter, int32_t numOfPages) {
  FUNC0(pSupporter->numOfPages * DEFAULT_INTERN_BUF_SIZE == pSupporter->bufSize);

  int32_t ret = FUNC3(pSupporter->meterOutputMMapBuf, pSupporter->bufSize);
  pSupporter->numOfPages = numOfPages;

  // disk-based output buffer is exhausted, try to extend the disk-based buffer
  ret = FUNC1(pSupporter->meterOutputFd, pSupporter->numOfPages * DEFAULT_INTERN_BUF_SIZE);
  if (ret != 0) {
    FUNC4("error in allocate the disk-based buffer");
    return;
  }

  pSupporter->bufSize = pSupporter->numOfPages * DEFAULT_INTERN_BUF_SIZE;
  pSupporter->meterOutputMMapBuf =
      FUNC2(NULL, pSupporter->bufSize, PROT_READ | PROT_WRITE, MAP_SHARED, pSupporter->meterOutputFd, 0);
}