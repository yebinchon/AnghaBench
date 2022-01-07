
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int TString ;
typedef int StkId ;


 size_t LUAI_MAXSHORTLEN ;
 int MAX_SIZE ;
 int TM_CONCAT ;
 int cast_void (scalar_t__) ;
 int copy2buff (int,int,char*) ;
 scalar_t__ cvt2str (int) ;
 char* getstr (int *) ;
 scalar_t__ isemptystr (int) ;
 int luaG_runerror (TYPE_1__*,char*) ;
 int * luaS_createlngstrobj (TYPE_1__*,size_t) ;
 int * luaS_newlstr (TYPE_1__*,char*,size_t) ;
 int luaT_trybinTM (TYPE_1__*,int,int,int,int ) ;
 int lua_assert (int) ;
 int setobjs2s (TYPE_1__*,int,int) ;
 int setsvalue2s (TYPE_1__*,int,int *) ;
 scalar_t__ tostring (TYPE_1__*,int) ;
 scalar_t__ ttisstring (int) ;
 size_t vslen (int) ;

void luaV_concat (lua_State *L, int total) {
  lua_assert(total >= 2);
  do {
    StkId top = L->top;
    int n = 2;
    if (!(ttisstring(top-2) || cvt2str(top-2)) || !tostring(L, top-1))
      luaT_trybinTM(L, top-2, top-1, top-2, TM_CONCAT);
    else if (isemptystr(top - 1))
      cast_void(tostring(L, top - 2));
    else if (isemptystr(top - 2)) {
      setobjs2s(L, top - 2, top - 1);
    }
    else {

      size_t tl = vslen(top - 1);
      TString *ts;

      for (n = 1; n < total && tostring(L, top - n - 1); n++) {
        size_t l = vslen(top - n - 1);
        if (l >= (MAX_SIZE/sizeof(char)) - tl)
          luaG_runerror(L, "string length overflow");
        tl += l;
      }
      if (tl <= LUAI_MAXSHORTLEN) {
        char buff[LUAI_MAXSHORTLEN];
        copy2buff(top, n, buff);
        ts = luaS_newlstr(L, buff, tl);
      }
      else {
        ts = luaS_createlngstrobj(L, tl);
        copy2buff(top, n, getstr(ts));
      }
      setsvalue2s(L, top - n, ts);
    }
    total -= n-1;
    L->top -= n-1;
  } while (total > 1);
}
