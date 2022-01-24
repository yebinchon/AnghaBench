#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  size_t int32_t ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_16__ {scalar_t__ order; } ;
struct TYPE_19__ {int numOfAlloc; int numOfVnodes; scalar_t__ tsOrder; int autoDelete; TYPE_1__ cur; scalar_t__ fileSize; int /*<<< orphan*/ * f; TYPE_2__* pData; int /*<<< orphan*/  path; } ;
struct TYPE_18__ {scalar_t__ magic; int numOfVnode; scalar_t__ tsOrder; int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {int /*<<< orphan*/  info; } ;
typedef  TYPE_2__ STSVnodeBlockInfoEx ;
typedef  TYPE_3__ STSVnodeBlockInfo ;
typedef  TYPE_3__ STSBufFileHeader ;
typedef  TYPE_5__ STSBuf ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TSQL_SO_ASC ; 
 scalar_t__ TSQL_SO_DESC ; 
 scalar_t__ TS_COMP_FILE_MAGIC ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_5__*) ; 
 TYPE_5__* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 TYPE_2__* FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__) ; 

STSBuf* FUNC15(const char* path, bool autoDelete) {
  STSBuf* pTSBuf = FUNC1(1, sizeof(STSBuf));
  if (pTSBuf == NULL) {
    return NULL;
  }

  FUNC11(pTSBuf->path, path, PATH_MAX);

  pTSBuf->f = FUNC3(pTSBuf->path, "r");
  if (pTSBuf->f == NULL) {
    return NULL;
  }

  if (FUNC0(pTSBuf) == NULL) {
    return NULL;
  }

  // validate the file magic number
  STSBufFileHeader header = {0};
  FUNC6(pTSBuf->f, 0, SEEK_SET);
  FUNC4(&header, 1, sizeof(header), pTSBuf->f);

  // invalid file
  if (header.magic != TS_COMP_FILE_MAGIC) {
    return NULL;
  }

  if (header.numOfVnode > pTSBuf->numOfAlloc) {
    pTSBuf->numOfAlloc = header.numOfVnode;
    STSVnodeBlockInfoEx* tmp = FUNC10(pTSBuf->pData, sizeof(STSVnodeBlockInfoEx) * pTSBuf->numOfAlloc);
    if (tmp == NULL) {
      FUNC12(pTSBuf);
      return NULL;
    }

    pTSBuf->pData = tmp;
  }

  pTSBuf->numOfVnodes = header.numOfVnode;

  // check the ts order
  pTSBuf->tsOrder = header.tsOrder;
  if (pTSBuf->tsOrder != TSQL_SO_ASC && pTSBuf->tsOrder != TSQL_SO_DESC) {
    FUNC14("invalid order info in buf:%d", pTSBuf->tsOrder);
    FUNC12(pTSBuf);
    return NULL;
  }

  size_t infoSize = sizeof(STSVnodeBlockInfo) * pTSBuf->numOfVnodes;

  STSVnodeBlockInfo* buf = (STSVnodeBlockInfo*)FUNC1(1, infoSize);
  int64_t pos = FUNC8(pTSBuf->f);
  FUNC4(buf, infoSize, 1, pTSBuf->f);

  // the length value for each vnode is not kept in file, so does not set the length value
  for (int32_t i = 0; i < pTSBuf->numOfVnodes; ++i) {
    STSVnodeBlockInfoEx* pBlockList = &pTSBuf->pData[i];
    FUNC9(&pBlockList->info, &buf[i], sizeof(STSVnodeBlockInfo));
  }

  FUNC5(buf);

  FUNC6(pTSBuf->f, 0, SEEK_END);

  struct stat fileStat;
  FUNC7(FUNC2(pTSBuf->f), &fileStat);

  pTSBuf->fileSize = (uint32_t) fileStat.st_size;
  FUNC13(pTSBuf);

  // ascending by default
  pTSBuf->cur.order = TSQL_SO_ASC;

  pTSBuf->autoDelete = autoDelete;
  return pTSBuf;
}