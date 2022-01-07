
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytesPerPoint; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ SMeterObj ;



int vnodeGetImportEndPart(SMeterObj *pObj, char *payload, int rows, char **pStart, TSKEY key0) {
  int i;

  for (i = 0; i < rows; ++i) {
    TSKEY key = *((TSKEY *)(payload + i * pObj->bytesPerPoint));
    if (key > key0) break;
  }

  *pStart = payload + i * pObj->bytesPerPoint;
  return rows - i;
}
