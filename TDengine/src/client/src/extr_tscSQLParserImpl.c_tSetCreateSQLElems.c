
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tVariantList ;
typedef int tFieldList ;
typedef int int32_t ;
struct TYPE_7__ {int metricName; int * pTagVals; } ;
struct TYPE_6__ {int * pTagColumns; int * pColumns; } ;
struct TYPE_8__ {int * pSelect; TYPE_2__ usingInfo; TYPE_1__ colInfo; } ;
typedef int SSQLToken ;
typedef int SQuerySQL ;
typedef TYPE_3__ SCreateTableSQL ;






 int assert (int) ;
 TYPE_3__* calloc (int,int) ;

SCreateTableSQL *tSetCreateSQLElems(tFieldList *pCols, tFieldList *pTags, SSQLToken *pMetricName,
                                    tVariantList *pTagVals, SQuerySQL *pSelect, int32_t type) {
  SCreateTableSQL *pCreate = calloc(1, sizeof(SCreateTableSQL));

  switch (type) {
    case 130: {
      pCreate->colInfo.pColumns = pCols;
      assert(pTagVals == ((void*)0) && pTags == ((void*)0));
      break;
    }
    case 129: {
      pCreate->colInfo.pColumns = pCols;
      pCreate->colInfo.pTagColumns = pTags;
      assert(pTagVals == ((void*)0) && pTags != ((void*)0) && pCols != ((void*)0));
      break;
    }
    case 131: {
      pCreate->usingInfo.pTagVals = pTagVals;
      pCreate->usingInfo.metricName = *pMetricName;
      break;
    }
    case 128: {
      pCreate->pSelect = pSelect;
      break;
    }
    default:
      assert(0);
  }

  return pCreate;
}
