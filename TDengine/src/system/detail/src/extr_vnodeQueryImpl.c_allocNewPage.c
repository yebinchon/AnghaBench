
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int tFilePage ;
struct TYPE_5__ {int lastPageId; int numOfPages; scalar_t__ numOfMeters; } ;
typedef TYPE_1__ SMeterQuerySupportObj ;


 int extendDiskBuf (TYPE_1__*,scalar_t__) ;
 int * getFilePage (TYPE_1__*,int) ;

__attribute__((used)) static tFilePage *allocNewPage(SMeterQuerySupportObj *pSupporter, uint32_t *pageId) {
  if (pSupporter->lastPageId == pSupporter->numOfPages - 1) {
    extendDiskBuf(pSupporter, pSupporter->numOfPages + pSupporter->numOfMeters);
  }

  *pageId = (++pSupporter->lastPageId);
  return getFilePage(pSupporter, *pageId);
}
