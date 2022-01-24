#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
typedef  int int32_t ;
struct TYPE_7__ {int /*<<< orphan*/ * f; } ;
struct TYPE_6__ {scalar_t__ numOfVnode; scalar_t__ magic; } ;
typedef  TYPE_1__ STSBufFileHeader ;
typedef  TYPE_2__ STSBuf ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TS_COMP_FILE_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 

int32_t FUNC2(STSBuf* pTSBuf, STSBufFileHeader* pHeader) {
  if ((pTSBuf->f == NULL) || pHeader == NULL || pHeader->numOfVnode < 0 || pHeader->magic != TS_COMP_FILE_MAGIC) {
    return -1;
  }

  int64_t r = FUNC0(pTSBuf->f, 0, SEEK_SET);
  if (r != 0) {
    return -1;
  }

  FUNC1(pHeader, sizeof(STSBufFileHeader), 1, pTSBuf->f);
  return 0;
}