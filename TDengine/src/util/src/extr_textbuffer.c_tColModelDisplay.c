
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ numOfCols; TYPE_1__* pFields; } ;
typedef TYPE_2__ tColModel ;
typedef int int8_t ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;
struct TYPE_5__ {int type; int bytes; } ;


 char* COLMODEL_GET_VAL (char*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;
 int assert (int) ;
 int printBinaryData (char*,int ) ;
 int printf (char*,...) ;
 int taosUcs4ToMbs (char*,int ,char*) ;

void tColModelDisplay(tColModel *pModel, void *pData, int32_t numOfRows, int32_t totalCapacity) {
  for (int32_t i = 0; i < numOfRows; ++i) {
    for (int32_t j = 0; j < pModel->numOfCols; ++j) {
      char *val = COLMODEL_GET_VAL((char *)pData, pModel, totalCapacity, i, j);

      int type = pModel->pFields[j].type;
      printf("type:%d ", type);

      switch (type) {
        case 137:
          printf("%lld\t", *(int64_t *)val);
          break;
        case 132:
          printf("%d\t", *(int32_t *)val);
          break;
        case 131: {
          char buf[4096] = {0};
          taosUcs4ToMbs(val, pModel->pFields[j].bytes, buf);
          printf("%s\t", buf);
        }
        case 136: {
          printBinaryData(val, pModel->pFields[j].bytes);
          break;
        }
        case 134:
          printf("%lf\t", *(double *)val);
          break;
        case 129:
          printf("%lld\t", *(int64_t *)val);
          break;
        case 128:
          printf("%d\t", *(int8_t *)val);
          break;
        case 130:
          printf("%d\t", *(int16_t *)val);
          break;
        case 135:
          printf("%d\t", *(int8_t *)val);
          break;
        case 133:
          printf("%f\t", *(float *)val);
          break;
        default:
          assert(0);
      }
    }
    printf("\n");
  }
  printf("\n");
}
