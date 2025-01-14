
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ mbstate_t ;


 int MB_CUR_MAX ;
 size_t mbrtowc (scalar_t__*,char const*,int ,TYPE_1__*) ;
 int towlower (scalar_t__) ;

__attribute__((used)) static int _FAT_directory_mbsncasecmp (const char* s1, const char* s2, size_t len1) {
 wchar_t wc1, wc2;
 mbstate_t ps1 = {0};
 mbstate_t ps2 = {0};
 size_t b1 = 0;
 size_t b2 = 0;

 if (len1 == 0) {
  return 0;
 }

 do {
  s1 += b1;
  s2 += b2;
  b1 = mbrtowc(&wc1, s1, MB_CUR_MAX, &ps1);
  b2 = mbrtowc(&wc2, s2, MB_CUR_MAX, &ps2);
  if ((int)b1 < 0 || (int)b2 < 0) {
   break;
  }
  len1 -= b1;
 } while (len1 > 0 && towlower(wc1) == towlower(wc2) && wc1 != 0);

 return towlower(wc1) - towlower(wc2);
}
