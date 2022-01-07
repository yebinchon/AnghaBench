
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_12__ {int data; } ;
struct TYPE_9__ {int numOfOutputCols; int numOfHiddenCols; int* pOffset; TYPE_1__* pFields; } ;
struct TYPE_11__ {TYPE_2__ fieldsInfo; } ;
struct TYPE_10__ {scalar_t__ numOfRows; int rspLen; scalar_t__ pRsp; int data; } ;
struct TYPE_8__ {int bytes; } ;
typedef TYPE_3__ SSqlRes ;
typedef TYPE_4__ SSqlCmd ;
typedef TYPE_5__ SRetrieveMeterRsp ;


 int assert (int) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (int ,char*,int) ;
 scalar_t__ realloc (scalar_t__,int) ;
 int tsDecompressString (int ,int,int,char*,int,int ,int ,int ) ;

__attribute__((used)) static void doDecompressPayload(SSqlCmd *pCmd, SSqlRes *pRes, int16_t compressed) {
  if (compressed && pRes->numOfRows > 0) {
    SRetrieveMeterRsp *pRetrieve = (SRetrieveMeterRsp *)pRes->pRsp;

    int32_t numOfTotalCols = pCmd->fieldsInfo.numOfOutputCols + pCmd->fieldsInfo.numOfHiddenCols;
    int32_t rowSize = pCmd->fieldsInfo.pOffset[numOfTotalCols - 1] + pCmd->fieldsInfo.pFields[numOfTotalCols - 1].bytes;


    char * buf = malloc(rowSize * pRes->numOfRows);

    int32_t payloadSize = pRes->rspLen - 1 - sizeof(SRetrieveMeterRsp);
    assert(payloadSize > 0);

    int32_t decompressedSize = tsDecompressString(pRetrieve->data, payloadSize, 1, buf, rowSize * pRes->numOfRows, 0, 0, 0);
    assert(decompressedSize == rowSize * pRes->numOfRows);

    pRes->pRsp = realloc(pRes->pRsp, pRes->rspLen - payloadSize + decompressedSize);
    memcpy(pRes->pRsp + sizeof(SRetrieveMeterRsp), buf, decompressedSize);

    free(buf);
  }

  pRes->data = ((SRetrieveMeterRsp *)pRes->pRsp)->data;
}
