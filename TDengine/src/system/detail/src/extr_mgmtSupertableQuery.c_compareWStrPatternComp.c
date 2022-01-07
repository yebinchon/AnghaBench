
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {char member_0; char member_1; } ;
typedef TYPE_1__ SPatternCompareInfo ;


 scalar_t__ TSDB_PATTERN_MATCH ;
 scalar_t__ WCSPatternMatch (int const*,int const*,int ,TYPE_1__*) ;
 int wcslen (int const*) ;

__attribute__((used)) static int32_t compareWStrPatternComp(const void* pLeft, const void* pRight) {
  SPatternCompareInfo pInfo = {'%', '_'};

  const wchar_t* pattern = pRight;
  const wchar_t* str = pLeft;

  int32_t ret = WCSPatternMatch(pattern, str, wcslen(str), &pInfo);

  return (ret == TSDB_PATTERN_MATCH) ? 0 : 1;
}
