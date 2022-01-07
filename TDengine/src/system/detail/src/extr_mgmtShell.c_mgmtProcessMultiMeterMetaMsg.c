
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_31__ {scalar_t__ numOfTags; TYPE_1__* vpeerDesc; int meterType; void* numOfColumns; int precision; void* sversion; void* vgid; void* sid; int uid; } ;
struct TYPE_35__ {char* meterId; TYPE_5__ meta; } ;
struct TYPE_29__ {scalar_t__ sid; scalar_t__ vgId; } ;
struct TYPE_34__ {int sversion; scalar_t__ numOfTags; int numOfColumns; char* pTagData; TYPE_3__ gid; int uid; int meterType; } ;
struct TYPE_33__ {scalar_t__ code; } ;
struct TYPE_32__ {TYPE_2__* vnodeGid; } ;
struct TYPE_30__ {int precision; } ;
struct TYPE_28__ {scalar_t__ vnode; int publicIp; } ;
struct TYPE_27__ {void* vnode; int ip; } ;
struct TYPE_26__ {int thandle; } ;
struct TYPE_25__ {TYPE_4__ cfg; } ;
struct TYPE_24__ {scalar_t__ numOfMeters; } ;
typedef TYPE_6__ SVgObj ;
typedef TYPE_7__ STaosRsp ;
typedef int STaosHeader ;
typedef TYPE_8__ STabObj ;
typedef int SSchema ;
typedef TYPE_9__ SMultiMeterMeta ;
typedef TYPE_10__ SMultiMeterInfoMsg ;
typedef TYPE_11__ SDbObj ;
typedef TYPE_12__ SConnObj ;


 int MAX_LEN_OF_METER_META ;
 scalar_t__ TSDB_CODE_INVALID_TABLE ;
 int TSDB_CODE_SERV_OUT_OF_MEMORY ;
 char TSDB_IE_TYPE_META ;
 int TSDB_METER_ID_LEN ;
 int TSDB_MSG_TYPE_MULTI_METERINFO_RSP ;
 int TSDB_VNODES_SUPPORT ;
 int assert (int) ;
 int htobe64 (int ) ;
 void* htonl (scalar_t__) ;
 void* htons (int) ;
 int mError (char*,char*,int ,int,scalar_t__) ;
 int mTrace (char*,char*,int ,int) ;
 int memcpy (char*,char*,int) ;
 char* mgmtForMultiAllocMsg (TYPE_12__*,int,char**,TYPE_7__**) ;
 TYPE_11__* mgmtGetDbByMeterId (char*) ;
 TYPE_8__* mgmtGetMeter (char*) ;
 TYPE_6__* mgmtGetVgroup (scalar_t__) ;
 scalar_t__ mgmtIsNormalMeter (TYPE_8__*) ;
 scalar_t__ mgmtMeterCreateFromMetric (TYPE_8__*) ;
 scalar_t__ mgmtSetMeterTagValue (char*,TYPE_8__*,TYPE_8__*) ;
 int mgmtSetSchemaFromMeters (int *,TYPE_8__*,int) ;
 scalar_t__ realloc (char*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int taosSendMsgToPeer (int ,char*,int) ;
 int taosSendSimpleRsp (int ,int ,int ) ;
 int tfree (char*) ;

int mgmtProcessMultiMeterMetaMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  SDbObj * pDbObj = ((void*)0);
  STabObj * pMeterObj = ((void*)0);
  SVgObj * pVgroup = ((void*)0);
  SMultiMeterMeta * pMeta = ((void*)0);
  SSchema * pSchema = ((void*)0);
  STaosRsp * pRsp = ((void*)0);
  char * pStart = ((void*)0);

  SMultiMeterInfoMsg * pInfo = (SMultiMeterInfoMsg *)pMsg;
  char * str = pMsg + sizeof(SMultiMeterInfoMsg);
  pInfo->numOfMeters = htonl(pInfo->numOfMeters);

  int size = 4*1024*1024;

  char *pNewMsg;
  if ((pStart = mgmtForMultiAllocMsg(pConn, size, &pNewMsg, &pRsp)) == ((void*)0)) {
    taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_MULTI_METERINFO_RSP, TSDB_CODE_SERV_OUT_OF_MEMORY);
    return 0;
  }

  int32_t totalNum = 0;
  char tblName[TSDB_METER_ID_LEN];
  char* nextStr;

  char* pCurMeter = pStart + sizeof(STaosRsp) + sizeof(SMultiMeterInfoMsg) + 1;
  char* pTail = pStart + size;

  while (str - pMsg < msgLen) {
    nextStr = strchr(str, ',');
    if (nextStr == ((void*)0)) {
      break;
    }

    memcpy(tblName, str, nextStr - str);
    tblName[nextStr - str] = '\0';
    str = nextStr + 1;


    if ((pTail - pCurMeter) < MAX_LEN_OF_METER_META) {
      char* pMsgHdr = pStart - sizeof(STaosHeader);
      size *= 2;
      pMsgHdr = (char*)realloc(pMsgHdr, size);
      if (((void*)0) == pMsgHdr) {
        char* pTmp = pStart - sizeof(STaosHeader);
        tfree(pTmp);
        taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_MULTI_METERINFO_RSP, TSDB_CODE_SERV_OUT_OF_MEMORY);
        break;
      }

      pCurMeter = (char*)pMsgHdr + sizeof(STaosHeader) + (pCurMeter - pStart);
      pStart = (char*)pMsgHdr + sizeof(STaosHeader);
      pNewMsg = pStart;
      pRsp = (STaosRsp *)pStart;
      pTail = pMsgHdr + size;
    }


    pMeterObj = mgmtGetMeter(tblName);
    pDbObj = mgmtGetDbByMeterId(tblName);

    if (pMeterObj == ((void*)0) || (pDbObj == ((void*)0))) {
      continue;
    } else {
      mTrace("%s, uid:%lld sversion:%d meter meta is retrieved", tblName, pMeterObj->uid, pMeterObj->sversion);
      pMeta = (SMultiMeterMeta *)pCurMeter;

      memcpy(pMeta->meterId, tblName, strlen(tblName));
      pMeta->meta.uid = htobe64(pMeterObj->uid);
      pMeta->meta.sid = htonl(pMeterObj->gid.sid);
      pMeta->meta.vgid = htonl(pMeterObj->gid.vgId);
      pMeta->meta.sversion = htons(pMeterObj->sversion);
      pMeta->meta.precision = pDbObj->cfg.precision;
      pMeta->meta.numOfTags = pMeterObj->numOfTags;
      pMeta->meta.numOfColumns = htons(pMeterObj->numOfColumns);
      pMeta->meta.meterType = pMeterObj->meterType;

      pCurMeter += sizeof(SMultiMeterMeta);
      pSchema = (SSchema *)pCurMeter;

      if (mgmtMeterCreateFromMetric(pMeterObj)) {
        assert(pMeterObj->numOfTags == 0);

        STabObj *pMetric = mgmtGetMeter(pMeterObj->pTagData);
        uint32_t numOfTotalCols = (uint32_t)pMetric->numOfTags + pMetric->numOfColumns;

        pMeta->meta.numOfTags = pMetric->numOfTags;
        mgmtSetSchemaFromMeters(pSchema, pMetric, numOfTotalCols);
        pCurMeter += numOfTotalCols * sizeof(SSchema);


        int32_t tagsLen = mgmtSetMeterTagValue(pCurMeter, pMetric, pMeterObj);
        pCurMeter += tagsLen;
      } else {




        uint32_t numOfTotalCols = (uint32_t)pMeterObj->numOfTags + pMeterObj->numOfColumns;
        mgmtSetSchemaFromMeters(pSchema, pMeterObj, numOfTotalCols);
        pCurMeter += numOfTotalCols * sizeof(SSchema);
      }

      if (mgmtIsNormalMeter(pMeterObj)) {
        pVgroup = mgmtGetVgroup(pMeterObj->gid.vgId);
        if (pVgroup == ((void*)0)) {
          pRsp->code = TSDB_CODE_INVALID_TABLE;
          pNewMsg++;
          mError("%s, uid:%lld sversion:%d vgId:%d pVgroup is NULL", tblName, pMeterObj->uid, pMeterObj->sversion,
                 pMeterObj->gid.vgId);
          goto _error_exit_code;
        }

        for (int i = 0; i < TSDB_VNODES_SUPPORT; ++i) {
          pMeta->meta.vpeerDesc[i].ip = pVgroup->vnodeGid[i].publicIp;
          pMeta->meta.vpeerDesc[i].vnode = htonl(pVgroup->vnodeGid[i].vnode);
        }
      }
    }

    totalNum++;
    if (totalNum > pInfo->numOfMeters) {
      pNewMsg++;
      break;
    }
  }


  msgLen = pCurMeter - pNewMsg;

  pRsp->code = 0;
  pNewMsg += sizeof(STaosRsp);
  *pNewMsg = TSDB_IE_TYPE_META;
  pNewMsg++;

  SMultiMeterInfoMsg *pRspInfo = (SMultiMeterInfoMsg *)pNewMsg;

  pRspInfo->numOfMeters = htonl(totalNum);
  goto _exit_code;

_error_exit_code:
  msgLen = pNewMsg - pStart;

_exit_code:
  taosSendMsgToPeer(pConn->thandle, pStart, msgLen);

  return msgLen;
}
