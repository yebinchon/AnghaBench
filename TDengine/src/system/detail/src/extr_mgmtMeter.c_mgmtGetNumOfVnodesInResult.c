
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t num; TYPE_3__** pRes; } ;
typedef TYPE_2__ tQueryResultset ;
typedef size_t int32_t ;
struct TYPE_5__ {size_t vgId; } ;
struct TYPE_7__ {TYPE_1__ gid; } ;
typedef TYPE_3__ STabObj ;



__attribute__((used)) static int32_t mgmtGetNumOfVnodesInResult(tQueryResultset *pResult) {
  int32_t numOfVnodes = 0;
  int32_t prevGid = -1;

  for (int32_t i = 0; i < pResult->num; ++i) {
    STabObj *pMeter = pResult->pRes[i];
    if (prevGid == -1) {
      prevGid = pMeter->gid.vgId;
      numOfVnodes++;
    } else if (prevGid != pMeter->gid.vgId) {
      prevGid = pMeter->gid.vgId;
      numOfVnodes++;
    }
  }

  return numOfVnodes;
}
