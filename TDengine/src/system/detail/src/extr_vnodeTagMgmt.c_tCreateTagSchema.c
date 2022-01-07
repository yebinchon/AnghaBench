
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int numOfCols; TYPE_2__* pSchema; scalar_t__* colOffset; } ;
typedef TYPE_1__ tTagSchema ;
typedef int int32_t ;
struct TYPE_8__ {scalar_t__ bytes; } ;
typedef TYPE_2__ SSchema ;


 scalar_t__ calloc (int,int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

tTagSchema *tCreateTagSchema(SSchema *pSchema, int32_t numOfTagCols) {
  if (numOfTagCols == 0 || pSchema == ((void*)0)) {
    return ((void*)0);
  }

  tTagSchema *pTagSchema =
      (tTagSchema *)calloc(1, sizeof(tTagSchema) + numOfTagCols * sizeof(int32_t) + sizeof(SSchema) * numOfTagCols);

  pTagSchema->colOffset[0] = 0;
  pTagSchema->numOfCols = numOfTagCols;
  for (int32_t i = 1; i < numOfTagCols; ++i) {
    pTagSchema->colOffset[i] = (pTagSchema->colOffset[i - 1] + pSchema[i - 1].bytes);
  }

  pTagSchema->pSchema = (SSchema *)&(pTagSchema->colOffset[numOfTagCols]);
  memcpy(pTagSchema->pSchema, pSchema, sizeof(SSchema) * numOfTagCols);
  return pTagSchema;
}
