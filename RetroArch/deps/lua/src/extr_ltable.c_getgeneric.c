
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Table ;
typedef int TValue ;
typedef int Node ;


 int gkey (int *) ;
 int gnext (int *) ;
 int const* gval (int *) ;
 int const* luaO_nilobject ;
 scalar_t__ luaV_rawequalobj (int ,int const*) ;
 int * mainposition (int *,int const*) ;

__attribute__((used)) static const TValue *getgeneric (Table *t, const TValue *key) {
  Node *n = mainposition(t, key);
  for (;;) {
    if (luaV_rawequalobj(gkey(n), key))
      return gval(n);
    else {
      int nx = gnext(n);
      if (nx == 0)
        return luaO_nilobject;
      n += nx;
    }
  }
}
