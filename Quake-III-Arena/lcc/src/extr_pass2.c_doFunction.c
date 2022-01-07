
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef TYPE_5__* rcc_interface_ty ;
struct TYPE_19__ {int * next; } ;
struct TYPE_13__ {int ** callee; } ;
struct TYPE_14__ {TYPE_1__ f; } ;
struct TYPE_18__ {int defined; TYPE_2__ u; } ;
struct TYPE_15__ {int f; int ncalls; int codelist; int callee; int caller; } ;
struct TYPE_16__ {TYPE_3__ rcc_Function; } ;
struct TYPE_17__ {TYPE_4__ v; } ;
struct TYPE_12__ {int (* function ) (TYPE_6__*,int **,int **,int ) ;} ;
typedef int * Symbol ;


 int FUNC ;
 TYPE_11__* IR ;
 int LABELS ;
 int Seq_free (int *) ;
 int Seq_length (int ) ;
 int* Seq_remlo (int ) ;
 TYPE_6__* cfunc ;
 TYPE_8__ codehead ;
 TYPE_8__* codelist ;
 int enterscope () ;
 int exitscope () ;
 int free (int*) ;
 int interface (int*) ;
 int * labels ;
 int ** newarray (int,int,int ) ;
 int stub1 (TYPE_6__*,int **,int **,int ) ;
 int * table (int *,int ) ;
 void* uid2symbol (int) ;

__attribute__((used)) static void doFunction(rcc_interface_ty in) {
 int i, n;
 Symbol *caller, *callee;






 cfunc = uid2symbol(in->v.rcc_Function.f);
 labels = table(((void*)0), LABELS);
 enterscope();
 n = Seq_length(in->v.rcc_Function.caller);
 caller = newarray(n + 1, sizeof *caller, FUNC);
 for (i = 0; i < n; i++) {
  int *uid = Seq_remlo(in->v.rcc_Function.caller);
  caller[i] = uid2symbol(*uid);
  free(uid);
 }
 caller[i] = ((void*)0);
 Seq_free(&in->v.rcc_Function.caller);
 callee = newarray(n + 1, sizeof *callee, FUNC);
 for (i = 0; i < n; i++) {
  int *uid = Seq_remlo(in->v.rcc_Function.callee);
  callee[i] = uid2symbol(*uid);
  free(uid);
 }
 callee[i] = ((void*)0);
 Seq_free(&in->v.rcc_Function.callee);
 cfunc->u.f.callee = callee;
 cfunc->defined = 1;





 codelist = &codehead;
 codelist->next = ((void*)0);
 n = Seq_length(in->v.rcc_Function.codelist);
 for (i = 0; i < n; i++)
  interface(Seq_remlo(in->v.rcc_Function.codelist));
 Seq_free(&in->v.rcc_Function.codelist);




 exitscope();
 (*IR->function)(cfunc, caller, callee, in->v.rcc_Function.ncalls);
 cfunc = ((void*)0);
 labels = ((void*)0);
}
