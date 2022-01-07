
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
typedef TYPE_2__ tFilePage ;
struct TYPE_8__ {size_t numOfCols; TYPE_1__* pFields; } ;
typedef TYPE_3__ tColModel ;
typedef size_t int32_t ;
struct TYPE_6__ {int type; int bytes; } ;


 int assignVal (char*,char*,int ,int ) ;
 char* getPos (int ,int ,size_t,size_t,size_t) ;

__attribute__((used)) static void setTagsValueInInterpolation(tFilePage** data, char** pTags, tColModel* pModel, int32_t order, int32_t start,
                                        int32_t capacity, int32_t num) {
  for (int32_t j = 0, i = start; i < pModel->numOfCols; ++i, ++j) {
    char* val1 = getPos(data[i]->data, pModel->pFields[i].bytes, order, capacity, num);
    assignVal(val1, pTags[j], pModel->pFields[i].bytes, pModel->pFields[i].type);
  }
}
