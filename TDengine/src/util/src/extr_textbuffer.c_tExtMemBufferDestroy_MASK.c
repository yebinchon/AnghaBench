#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ nAllocSize; TYPE_2__* pFlushoutInfo; } ;
struct TYPE_9__ {TYPE_1__ flushoutData; } ;
struct TYPE_8__ {scalar_t__ dataFile; int /*<<< orphan*/  pColModel; int /*<<< orphan*/  dataFilePath; struct TYPE_8__* pNext; struct TYPE_8__* pHead; TYPE_3__ fileMeta; } ;
typedef  TYPE_2__ tFilePagesItem ;
typedef  TYPE_3__ tFileMeta ;
typedef  TYPE_2__ tExtMemBuffer ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(tExtMemBuffer **pMemBuffer) {
  if ((*pMemBuffer) == NULL) {
    return;
  }

  // release flush out info link
  tFileMeta *pFileMeta = &(*pMemBuffer)->fileMeta;
  if (pFileMeta->flushoutData.nAllocSize != 0 && pFileMeta->flushoutData.pFlushoutInfo != NULL) {
    FUNC4(pFileMeta->flushoutData.pFlushoutInfo);
  }

  // release all in-memory buffer pages
  tFilePagesItem *pFilePages = (*pMemBuffer)->pHead;
  while (pFilePages != NULL) {
    tFilePagesItem *pTmp = pFilePages;
    pFilePages = pFilePages->pNext;
    FUNC4(pTmp);
  }

  // close temp file
  if ((*pMemBuffer)->dataFile != 0) {
    int32_t ret = FUNC0((*pMemBuffer)->dataFile);
    if (ret != 0) {
      FUNC1("failed to close file:%s, reason:%s", (*pMemBuffer)->dataFilePath, FUNC2(errno));
    }
    FUNC5((*pMemBuffer)->dataFilePath);
  }

  FUNC3((*pMemBuffer)->pColModel);

  FUNC4(*pMemBuffer);
}