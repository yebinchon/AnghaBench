
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_9__ {int metatable; } ;
struct TYPE_8__ {int metatable; } ;
typedef int TValue ;
 int TM_EQ ;
 int bvalue (int const*) ;
 int callTMres (TYPE_1__*,int ,int const*,int const*,int const*) ;
 int gcvalue (int const*) ;
 int * get_compTM (TYPE_1__*,int ,int ,int ) ;
 TYPE_4__* hvalue (int const*) ;
 int l_isfalse (int ) ;
 int lua_assert (int) ;
 int luai_numeq (int ,int ) ;
 int nvalue (int const*) ;
 int pvalue (int const*) ;
 int ttype (int const*) ;
 TYPE_2__* uvalue (int const*) ;

int luaV_equalval (lua_State *L, const TValue *t1, const TValue *t2) {
  const TValue *tm;
  lua_assert(ttype(t1) == ttype(t2));
  switch (ttype(t1)) {
    case 131: return 1;
    case 130: return luai_numeq(nvalue(t1), nvalue(t2));
    case 133: return bvalue(t1) == bvalue(t2);
    case 132: return pvalue(t1) == pvalue(t2);
    case 128: {
      if (uvalue(t1) == uvalue(t2)) return 1;
      tm = get_compTM(L, uvalue(t1)->metatable, uvalue(t2)->metatable,
                         TM_EQ);
      break;
    }
    case 129: {
      if (hvalue(t1) == hvalue(t2)) return 1;
      tm = get_compTM(L, hvalue(t1)->metatable, hvalue(t2)->metatable, TM_EQ);
      break;
    }
    default: return gcvalue(t1) == gcvalue(t2);
  }
  if (tm == ((void*)0)) return 0;
  callTMres(L, L->top, tm, t1, t2);
  return !l_isfalse(L->top);
}
