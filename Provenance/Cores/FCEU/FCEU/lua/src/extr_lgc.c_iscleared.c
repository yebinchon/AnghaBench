
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TValue ;


 int gcvalue (int const*) ;
 int iscollectable (int const*) ;
 scalar_t__ isfinalized (int ) ;
 scalar_t__ iswhite (int ) ;
 int rawtsvalue (int const*) ;
 int stringmark (int ) ;
 scalar_t__ ttisstring (int const*) ;
 scalar_t__ ttisuserdata (int const*) ;
 int uvalue (int const*) ;

__attribute__((used)) static int iscleared (const TValue *o, int iskey) {
  if (!iscollectable(o)) return 0;
  if (ttisstring(o)) {
    stringmark(rawtsvalue(o));
    return 0;
  }
  return iswhite(gcvalue(o)) ||
    (ttisuserdata(o) && (!iskey && isfinalized(uvalue(o))));
}
