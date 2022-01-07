
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef TYPE_5__* rcc_interface_ty ;
struct TYPE_13__ {int offset; TYPE_6__* base; void* sym; } ;
struct TYPE_14__ {TYPE_1__ addr; } ;
struct TYPE_19__ {TYPE_2__ u; } ;
struct TYPE_18__ {scalar_t__ scope; scalar_t__ sclass; } ;
struct TYPE_15__ {int uid; int p; int n; int q; } ;
struct TYPE_16__ {TYPE_3__ rcc_Address; } ;
struct TYPE_17__ {TYPE_4__ v; } ;
struct TYPE_12__ {int (* address ) (void*,TYPE_6__*,int ) ;} ;
typedef TYPE_6__* Symbol ;
typedef TYPE_7__* Code ;


 int Address ;
 scalar_t__ EXTERN ;
 scalar_t__ GLOBAL ;
 TYPE_11__* IR ;
 scalar_t__ STATIC ;
 int assert (int) ;
 TYPE_7__* code (int ) ;
 int ** items ;
 int nuids ;
 int * rcc_Symbol (int,int ) ;
 int stub1 (void*,TYPE_6__*,int ) ;
 void* uid2symbol (int) ;

__attribute__((used)) static void doAddress(rcc_interface_ty in) {
 int uid = in->v.rcc_Address.uid;
 Symbol p = uid2symbol(in->v.rcc_Address.p);

 assert(uid >= 0 && uid < nuids);
 assert(items[uid] == ((void*)0));
 items[uid] = rcc_Symbol(uid, in->v.rcc_Address.q);
 if (p->scope == GLOBAL || p->sclass == STATIC || p->sclass == EXTERN)
  (*IR->address)(uid2symbol(uid), p, in->v.rcc_Address.n);
 else {
  Code cp = code(Address);
  cp->u.addr.sym = uid2symbol(uid);
  cp->u.addr.base = p;
  cp->u.addr.offset = in->v.rcc_Address.n;
 }
}
