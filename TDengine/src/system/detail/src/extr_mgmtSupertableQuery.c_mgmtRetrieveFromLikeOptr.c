
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tSkipListNode ;
struct TYPE_7__ {int pRes; int num; } ;
typedef TYPE_1__ tQueryResultset ;
struct TYPE_9__ {char const* member_1; int member_0; } ;
struct TYPE_8__ {int pSkipList; } ;
typedef TYPE_2__ STabObj ;
typedef int SPatternCompareInfo ;
typedef TYPE_3__ SMeterNameFilterSupporter ;


 int PATTERN_COMPARE_INFO_INITIALIZER ;
 int mgmtTablenameFilterCallback ;
 int tSkipListIterateList (int ,int ***,int ,TYPE_3__*) ;

__attribute__((used)) static void mgmtRetrieveFromLikeOptr(tQueryResultset* pRes, const char* str, STabObj* pMetric) {
  SPatternCompareInfo info = PATTERN_COMPARE_INFO_INITIALIZER;
  SMeterNameFilterSupporter supporter = {info, str};

  pRes->num =
      tSkipListIterateList(pMetric->pSkipList, (tSkipListNode***)&pRes->pRes, mgmtTablenameFilterCallback, &supporter);
}
