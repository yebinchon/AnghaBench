
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef scalar_t__ lua_Integer ;
typedef int TValue ;


 int LEintfloat (scalar_t__,int ) ;
 int LTintfloat (scalar_t__,int ) ;
 int fltvalue (int const*) ;
 scalar_t__ ivalue (int const*) ;
 scalar_t__ luai_numisnan (int ) ;
 int luai_numlt (int ,int ) ;
 scalar_t__ ttisfloat (int const*) ;
 scalar_t__ ttisinteger (int const*) ;

__attribute__((used)) static int LTnum (const TValue *l, const TValue *r) {
  if (ttisinteger(l)) {
    lua_Integer li = ivalue(l);
    if (ttisinteger(r))
      return li < ivalue(r);
    else
      return LTintfloat(li, fltvalue(r));
  }
  else {
    lua_Number lf = fltvalue(l);
    if (ttisfloat(r))
      return luai_numlt(lf, fltvalue(r));
    else if (luai_numisnan(lf))
      return 0;
    else
      return !LEintfloat(ivalue(r), lf);
  }
}
