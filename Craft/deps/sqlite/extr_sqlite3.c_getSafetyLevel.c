
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ArraySize (int const*) ;
 int sqlite3Atoi (char const*) ;
 scalar_t__ sqlite3Isdigit (char const) ;
 scalar_t__ sqlite3StrNICmp (char const*,char const*,int) ;
 int sqlite3Strlen30 (char const*) ;

__attribute__((used)) static u8 getSafetyLevel(const char *z, int omitFull, int dflt){

  static const char zText[] = "onoffalseyestruefull";
  static const u8 iOffset[] = {0, 1, 2, 4, 9, 12, 16};
  static const u8 iLength[] = {2, 2, 3, 5, 3, 4, 4};
  static const u8 iValue[] = {1, 0, 0, 0, 1, 1, 2};
  int i, n;
  if( sqlite3Isdigit(*z) ){
    return (u8)sqlite3Atoi(z);
  }
  n = sqlite3Strlen30(z);
  for(i=0; i<ArraySize(iLength)-omitFull; i++){
    if( iLength[i]==n && sqlite3StrNICmp(&zText[iOffset[i]],z,n)==0 ){
      return iValue[i];
    }
  }
  return dflt;
}
