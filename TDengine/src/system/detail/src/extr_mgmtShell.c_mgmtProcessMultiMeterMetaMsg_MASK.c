#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_12__ ;
typedef  struct TYPE_25__   TYPE_11__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_31__ {scalar_t__ numOfTags; TYPE_1__* vpeerDesc; int /*<<< orphan*/  meterType; void* numOfColumns; int /*<<< orphan*/  precision; void* sversion; void* vgid; void* sid; int /*<<< orphan*/  uid; } ;
struct TYPE_35__ {char* meterId; TYPE_5__ meta; } ;
struct TYPE_29__ {scalar_t__ sid; scalar_t__ vgId; } ;
struct TYPE_34__ {int sversion; scalar_t__ numOfTags; int numOfColumns; char* pTagData; TYPE_3__ gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  meterType; } ;
struct TYPE_33__ {scalar_t__ code; } ;
struct TYPE_32__ {TYPE_2__* vnodeGid; } ;
struct TYPE_30__ {int /*<<< orphan*/  precision; } ;
struct TYPE_28__ {scalar_t__ vnode; int /*<<< orphan*/  publicIp; } ;
struct TYPE_27__ {void* vnode; int /*<<< orphan*/  ip; } ;
struct TYPE_26__ {int /*<<< orphan*/  thandle; } ;
struct TYPE_25__ {TYPE_4__ cfg; } ;
struct TYPE_24__ {scalar_t__ numOfMeters; } ;
typedef  TYPE_6__ SVgObj ;
typedef  TYPE_7__ STaosRsp ;
typedef  int /*<<< orphan*/  STaosHeader ;
typedef  TYPE_8__ STabObj ;
typedef  int /*<<< orphan*/  SSchema ;
typedef  TYPE_9__ SMultiMeterMeta ;
typedef  TYPE_10__ SMultiMeterInfoMsg ;
typedef  TYPE_11__ SDbObj ;
typedef  TYPE_12__ SConnObj ;

/* Variables and functions */
 int MAX_LEN_OF_METER_META ; 
 scalar_t__ TSDB_CODE_INVALID_TABLE ; 
 int /*<<< orphan*/  TSDB_CODE_SERV_OUT_OF_MEMORY ; 
 char TSDB_IE_TYPE_META ; 
 int TSDB_METER_ID_LEN ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_MULTI_METERINFO_RSP ; 
 int TSDB_VNODES_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (TYPE_12__*,int,char**,TYPE_7__**) ; 
 TYPE_11__* FUNC8 (char*) ; 
 TYPE_8__* FUNC9 (char*) ; 
 TYPE_6__* FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_8__*) ; 
 scalar_t__ FUNC12 (TYPE_8__*) ; 
 scalar_t__ FUNC13 (char*,TYPE_8__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_8__*,int) ; 
 scalar_t__ FUNC15 (char*,int) ; 
 char* FUNC16 (char*,char) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

int FUNC21(char *pMsg, int msgLen, SConnObj *pConn) {
  SDbObj *          pDbObj    = NULL;
  STabObj *         pMeterObj = NULL;
  SVgObj *          pVgroup   = NULL;
  SMultiMeterMeta * pMeta     = NULL;
  SSchema *         pSchema   = NULL;
  STaosRsp *        pRsp      = NULL;
  char *            pStart    = NULL;

  SMultiMeterInfoMsg * pInfo = (SMultiMeterInfoMsg *)pMsg;
  char *                 str = pMsg + sizeof(SMultiMeterInfoMsg);
  pInfo->numOfMeters         = FUNC2(pInfo->numOfMeters);

  int size = 4*1024*1024; // first malloc 4 MB, subsequent reallocation as twice

  char *pNewMsg;
  if ((pStart = FUNC7(pConn, size, &pNewMsg, &pRsp)) == NULL) {
    FUNC19(pConn->thandle, TSDB_MSG_TYPE_MULTI_METERINFO_RSP, TSDB_CODE_SERV_OUT_OF_MEMORY);
    return 0;
  }

  int32_t totalNum = 0;
  char  tblName[TSDB_METER_ID_LEN];
  char* nextStr;

  char* pCurMeter  = pStart + sizeof(STaosRsp) + sizeof(SMultiMeterInfoMsg) + 1;  // 1: ie type byte
  char* pTail      = pStart + size;

  while (str - pMsg < msgLen) {
    nextStr = FUNC16(str, ',');
    if (nextStr == NULL) {
      break;
    }

    FUNC6(tblName, str, nextStr - str);
    tblName[nextStr - str] = '\0';
    str = nextStr + 1;

    // judge whether the remaining memory is adequate
    if ((pTail - pCurMeter) < MAX_LEN_OF_METER_META) {
      char* pMsgHdr = pStart - sizeof(STaosHeader);
      size *= 2;
      pMsgHdr = (char*)FUNC15(pMsgHdr, size);
      if (NULL == pMsgHdr) {
        char* pTmp = pStart - sizeof(STaosHeader);
        FUNC20(pTmp);
        FUNC19(pConn->thandle, TSDB_MSG_TYPE_MULTI_METERINFO_RSP, TSDB_CODE_SERV_OUT_OF_MEMORY);
        break;
      }

      pCurMeter = (char*)pMsgHdr + sizeof(STaosHeader) + (pCurMeter - pStart);
      pStart    = (char*)pMsgHdr + sizeof(STaosHeader);
      pNewMsg   = pStart;
      pRsp      = (STaosRsp *)pStart;
      pTail     = pMsgHdr + size;      
    }

    // get meter schema, and fill into resp payload
    pMeterObj = FUNC9(tblName);
    pDbObj = FUNC8(tblName);

    if (pMeterObj == NULL || (pDbObj == NULL)) {
      continue;
    } else {
      FUNC5("%s, uid:%lld sversion:%d meter meta is retrieved", tblName, pMeterObj->uid, pMeterObj->sversion);
      pMeta = (SMultiMeterMeta *)pCurMeter;

      FUNC6(pMeta->meterId, tblName, FUNC17(tblName));
      pMeta->meta.uid = FUNC1(pMeterObj->uid);
      pMeta->meta.sid = FUNC2(pMeterObj->gid.sid);
      pMeta->meta.vgid = FUNC2(pMeterObj->gid.vgId);
      pMeta->meta.sversion = FUNC3(pMeterObj->sversion);
      pMeta->meta.precision = pDbObj->cfg.precision;
      pMeta->meta.numOfTags = pMeterObj->numOfTags;
      pMeta->meta.numOfColumns = FUNC3(pMeterObj->numOfColumns);
      pMeta->meta.meterType = pMeterObj->meterType;

      pCurMeter += sizeof(SMultiMeterMeta);
      pSchema = (SSchema *)pCurMeter;  // schema locates at the end of SMeterMeta struct

      if (FUNC12(pMeterObj)) {
        FUNC0(pMeterObj->numOfTags == 0);

        STabObj *pMetric = FUNC9(pMeterObj->pTagData);
        uint32_t numOfTotalCols = (uint32_t)pMetric->numOfTags + pMetric->numOfColumns;

        pMeta->meta.numOfTags = pMetric->numOfTags;  // update the numOfTags info
        FUNC14(pSchema, pMetric, numOfTotalCols);
        pCurMeter += numOfTotalCols * sizeof(SSchema);

        // for meters created from metric, we need the metric tag schema to parse the tag data
        int32_t tagsLen = FUNC13(pCurMeter, pMetric, pMeterObj);
        pCurMeter += tagsLen;
      } else {
        /*
         * for metrics, or meters that are not created from metric, set the schema directly
         * for meters created from metric, we use the schema of metric instead
         */
        uint32_t numOfTotalCols = (uint32_t)pMeterObj->numOfTags + pMeterObj->numOfColumns;
        FUNC14(pSchema, pMeterObj, numOfTotalCols);
        pCurMeter += numOfTotalCols * sizeof(SSchema);
      }

      if (FUNC11(pMeterObj)) {
        pVgroup = FUNC10(pMeterObj->gid.vgId);
        if (pVgroup == NULL) {
          pRsp->code = TSDB_CODE_INVALID_TABLE;
          pNewMsg++;
          FUNC4("%s, uid:%lld sversion:%d vgId:%d pVgroup is NULL", tblName, pMeterObj->uid, pMeterObj->sversion,
                 pMeterObj->gid.vgId);
          goto _error_exit_code;
        }

        for (int i = 0; i < TSDB_VNODES_SUPPORT; ++i) {
          pMeta->meta.vpeerDesc[i].ip = pVgroup->vnodeGid[i].publicIp;
          pMeta->meta.vpeerDesc[i].vnode = FUNC2(pVgroup->vnodeGid[i].vnode);
        }
      }
    }

    totalNum++;
    if (totalNum > pInfo->numOfMeters) {
      pNewMsg++;
      break;
    }
  }

  // fill rsp code, ieType
  msgLen = pCurMeter - pNewMsg;

  pRsp->code = 0;
  pNewMsg += sizeof(STaosRsp);
  *pNewMsg = TSDB_IE_TYPE_META;
  pNewMsg++;

  SMultiMeterInfoMsg *pRspInfo = (SMultiMeterInfoMsg *)pNewMsg;

  pRspInfo->numOfMeters = FUNC2(totalNum);
  goto _exit_code;

_error_exit_code:
  msgLen = pNewMsg - pStart;

_exit_code:
  FUNC18(pConn->thandle, pStart, msgLen);

  return msgLen;
}