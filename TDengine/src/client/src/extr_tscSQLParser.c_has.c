
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t nField; TYPE_1__* p; } ;
typedef TYPE_2__ tFieldList ;
typedef size_t int32_t ;
struct TYPE_4__ {int name; } ;


 int TSDB_COL_NAME_LEN ;
 scalar_t__ strncasecmp (char*,int ,int ) ;

__attribute__((used)) static bool has(tFieldList* pFieldList, int32_t startIdx, char* name) {
  for (int32_t j = startIdx; j < pFieldList->nField; ++j) {
    if (strncasecmp(name, pFieldList->p[j].name, TSDB_COL_NAME_LEN) == 0) return 1;
  }

  return 0;
}
