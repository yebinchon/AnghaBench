
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int tmp ;
typedef unsigned long long UINT64 ;
typedef int UINT ;


 int UniFormat (char*,int,char*,char*,char*,int,unsigned long long) ;
 scalar_t__ UniStrCmpi (char*,char*) ;

bool CheckStringLibrary()
{
 wchar_t *compare_str = L"TEST_TEST_123_123456789012345";
 char *teststr = "TEST";
 wchar_t *testunistr = L"TEST";
 wchar_t tmp[64];
 UINT i1 = 123;
 UINT64 i2 = 123456789012345ULL;

 UniFormat(tmp, sizeof(tmp), L"%S_%s_%u_%I64u", teststr, testunistr,
  i1, i2);

 if (UniStrCmpi(tmp, compare_str) != 0)
 {
  return 0;
 }

 return 1;
}
