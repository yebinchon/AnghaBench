
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {char member_0; char member_1; } ;
typedef TYPE_1__ SPatternCompareInfo ;


 scalar_t__ TSDB_PATTERN_MATCH ;
 scalar_t__ patternMatch (char const*,char const*,int ,TYPE_1__*) ;
 int strlen (char const*) ;

__attribute__((used)) static int32_t compareStrPatternComp(const void* pLeft, const void* pRight) {
  SPatternCompareInfo pInfo = {'%', '_'};

  const char* pattern = pRight;
  const char* str = pLeft;

  int32_t ret = patternMatch(pattern, str, strlen(str), &pInfo);

  return (ret == TSDB_PATTERN_MATCH) ? 0 : 1;
}
