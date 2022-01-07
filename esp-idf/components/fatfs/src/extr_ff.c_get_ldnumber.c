
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UINT ;
typedef char TCHAR ;


 int CurrVol ;
 scalar_t__ FF_USE_LFN ;
 int FF_VOLUMES ;
 scalar_t__ IsDigit (char const) ;
 scalar_t__ IsLower (char) ;
 char** VolumeStr ;

__attribute__((used)) static int get_ldnumber (
 const TCHAR** path
)
{
 const TCHAR *tp, *tt;
 TCHAR tc;
 int i, vol = -1;





 tt = tp = *path;
 if (!tp) return vol;
 do tc = *tt++; while ((UINT)tc >= (FF_USE_LFN ? ' ' : '!') && tc != ':');

 if (tc == ':') {
  i = FF_VOLUMES;
  if (IsDigit(*tp) && tp + 2 == tt) {
   i = (int)*tp - '0';
  }
  if (i < FF_VOLUMES) {
   vol = i;
   *path = tt;
  }
  return vol;
 }
 vol = 0;

 return vol;
}
