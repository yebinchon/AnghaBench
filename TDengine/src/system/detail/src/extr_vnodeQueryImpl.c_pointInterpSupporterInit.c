
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_12__ {int numOfCols; void** pNextPoint; void** pPrevPoint; } ;
struct TYPE_11__ {int numOfCols; TYPE_2__* colList; } ;
struct TYPE_9__ {size_t bytes; } ;
struct TYPE_10__ {TYPE_1__ data; } ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SPointInterpoSupporter ;


 int POINTER_BYTES ;
 int PRIMARY_TSCOL_LOADED (TYPE_3__*) ;
 int assert (int ) ;
 void* calloc (int,size_t) ;
 scalar_t__ isPointInterpoQuery (TYPE_3__*) ;
 void* malloc (int) ;

void pointInterpSupporterInit(SQuery *pQuery, SPointInterpoSupporter *pInterpoSupport) {
  if (isPointInterpoQuery(pQuery)) {
    pInterpoSupport->pPrevPoint = malloc(pQuery->numOfCols * POINTER_BYTES);
    pInterpoSupport->pNextPoint = malloc(pQuery->numOfCols * POINTER_BYTES);

    pInterpoSupport->numOfCols = pQuery->numOfCols;


    int32_t len = 0;
    for (int32_t i = 0; i < pQuery->numOfCols; ++i) {
      len += pQuery->colList[i].data.bytes;
    }

    assert(PRIMARY_TSCOL_LOADED(pQuery));

    void *prev = calloc(1, len);
    void *next = calloc(1, len);

    int32_t offset = 0;

    for (int32_t i = 0, j = 0; i < pQuery->numOfCols; ++i, ++j) {
      pInterpoSupport->pPrevPoint[j] = prev + offset;
      pInterpoSupport->pNextPoint[j] = next + offset;

      offset += pQuery->colList[i].data.bytes;
    }
  }
}
