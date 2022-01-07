
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* p; } ;
struct TYPE_8__ {scalar_t__ base; } ;
struct TYPE_9__ {TYPE_2__ l; } ;
struct TYPE_10__ {scalar_t__ func; TYPE_3__ u; } ;
struct TYPE_7__ {int numparams; } ;
typedef scalar_t__ StkId ;
typedef TYPE_4__ CallInfo ;


 int cast_int (scalar_t__) ;
 TYPE_6__* clLvalue (scalar_t__) ;

__attribute__((used)) static const char *findvararg (CallInfo *ci, int n, StkId *pos) {
  int nparams = clLvalue(ci->func)->p->numparams;
  if (n >= cast_int(ci->u.l.base - ci->func) - nparams)
    return ((void*)0);
  else {
    *pos = ci->func + nparams + n;
    return "(*vararg)";
  }
}
