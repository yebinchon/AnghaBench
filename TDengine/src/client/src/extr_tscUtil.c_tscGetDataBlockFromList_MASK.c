#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  STableDataBlocks ;
typedef  int /*<<< orphan*/  SDataBlockList ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t,scalar_t__,scalar_t__,char*) ; 

STableDataBlocks* FUNC4(void* pHashList, SDataBlockList* pDataBlockList, int64_t id, int32_t size,
                                          int32_t startOffset, int32_t rowSize, char* tableId) {
  STableDataBlocks* dataBuf = NULL;

  STableDataBlocks** t1 = (STableDataBlocks**)FUNC1(pHashList, id);
  if (t1 != NULL) {
    dataBuf = *t1;
  }

  if (dataBuf == NULL) {
    dataBuf = FUNC3((size_t)size, rowSize, startOffset, tableId);
    dataBuf = *(STableDataBlocks**)FUNC0(pHashList, id, (char*)&dataBuf);
    FUNC2(pDataBlockList, dataBuf);
  }

  return dataBuf;
}