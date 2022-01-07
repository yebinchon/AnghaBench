
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int numOfTags; int numOfColumns; scalar_t__ schema; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SSchema ;


 int mgmtIsMetric (TYPE_1__*) ;
 scalar_t__ strcasecmp (char const*,int ) ;

int32_t mgmtFindTagCol(STabObj *pMetric, const char *tagName) {
  if (!mgmtIsMetric(pMetric)) return -1;

  SSchema *schema = ((void*)0);

  for (int i = 0; i < pMetric->numOfTags; i++) {
    schema = (SSchema *)(pMetric->schema + (pMetric->numOfColumns + i) * sizeof(SSchema));

    if (strcasecmp(tagName, schema->name) == 0) return i;
  }

  return -1;
}
