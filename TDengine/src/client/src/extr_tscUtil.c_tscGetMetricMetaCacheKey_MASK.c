#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_12__ ;
typedef  struct TYPE_21__   TYPE_11__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t int32_t ;
struct TYPE_29__ {int orderType; } ;
struct TYPE_27__ {scalar_t__ n; char* z; } ;
struct TYPE_28__ {TYPE_5__ cond; } ;
struct TYPE_24__ {char* meterId; } ;
struct TYPE_23__ {char* meterId; } ;
struct TYPE_25__ {TYPE_2__ right; TYPE_1__ left; scalar_t__ hasJoin; } ;
struct TYPE_30__ {int relType; TYPE_6__ tbnameCond; TYPE_3__ joinInfo; } ;
struct TYPE_31__ {TYPE_7__ groupbyExpr; TYPE_8__ tagCond; } ;
struct TYPE_26__ {char* z; } ;
struct TYPE_22__ {char* digest; } ;
struct TYPE_21__ {TYPE_4__ cond; } ;
struct TYPE_20__ {size_t numOfTags; int* tagColumnIndex; char* name; } ;
typedef  TYPE_8__ STagCond ;
typedef  TYPE_9__ SSqlCmd ;
typedef  TYPE_10__ SMeterMetaInfo ;
typedef  TYPE_11__ SCond ;
typedef  TYPE_12__ MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*,int /*<<< orphan*/ *,size_t) ; 
 size_t TSDB_MAX_SQL_LEN ; 
 size_t TSDB_MAX_TAGS_LEN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char*,size_t) ; 
 char* FUNC4 (int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 size_t FUNC6 (char*,size_t,char*,char*,char*,char*,int,char*,char*,int) ; 
 scalar_t__ FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 size_t FUNC9 (char*) ; 
 TYPE_11__* FUNC10 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC11 (TYPE_9__*,int /*<<< orphan*/ ,size_t*) ; 

void FUNC12(SSqlCmd* pCmd, char* str, uint64_t uid) {
  int32_t         index = -1;
  SMeterMetaInfo* pMeterMetaInfo = FUNC11(pCmd, uid, &index);

  int32_t len = 0;
  char    tagIdBuf[128] = {0};
  for (int32_t i = 0; i < pMeterMetaInfo->numOfTags; ++i) {
    len += FUNC7(&tagIdBuf[len], "%d,", pMeterMetaInfo->tagColumnIndex[i]);
  }

  STagCond* pTagCond = &pCmd->tagCond;
  FUNC2(len < FUNC9(tagIdBuf));

  const int32_t maxKeySize = TSDB_MAX_TAGS_LEN;  // allowed max key size
  char*         tmp = FUNC4(1, TSDB_MAX_SQL_LEN);

  SCond* cond = FUNC10(pTagCond, uid);

  char join[512] = {0};
  if (pTagCond->joinInfo.hasJoin) {
    FUNC7(join, "%s,%s", pTagCond->joinInfo.left.meterId, pTagCond->joinInfo.right.meterId);
  }

  int32_t keyLen =
      FUNC6(tmp, TSDB_MAX_SQL_LEN, "%s,%s,%s,%d,%s,[%s],%d", pMeterMetaInfo->name,
               (cond != NULL ? cond->cond.z : NULL), pTagCond->tbnameCond.cond.n > 0 ? pTagCond->tbnameCond.cond.z : NULL,
               pTagCond->relType, join, tagIdBuf, pCmd->groupbyExpr.orderType);

  FUNC2(keyLen <= TSDB_MAX_SQL_LEN);

  if (keyLen < maxKeySize) {
    FUNC8(str, tmp);
  } else {  // using md5 to hash
    MD5_CTX ctx;
    FUNC0(&ctx);

    FUNC1(&ctx, (uint8_t*) tmp, keyLen);
    char* pStr = FUNC3(ctx.digest, FUNC9(ctx.digest));
    FUNC8(str, pStr);
  }

  FUNC5(tmp);
}