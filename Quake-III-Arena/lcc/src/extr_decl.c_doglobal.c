
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_17__ {scalar_t__ size; TYPE_12__* type; } ;
struct TYPE_16__ {int defined; scalar_t__ sclass; char* name; TYPE_5__* type; int generated; } ;
struct TYPE_15__ {int (* stabsym ) (TYPE_1__*) ;int (* space ) (scalar_t__) ;int (* import ) (TYPE_1__*) ;} ;
struct TYPE_14__ {scalar_t__ size; } ;
typedef TYPE_1__* Symbol ;


 scalar_t__ AUTO ;
 int BSS ;
 scalar_t__ EXTERN ;
 TYPE_13__* IR ;
 scalar_t__ Pflag ;
 scalar_t__ STATIC ;
 TYPE_5__* array (TYPE_12__*,int,int ) ;
 int defglobal (TYPE_1__*,int ) ;
 int error (char*,TYPE_5__*,char*) ;
 scalar_t__ glevel ;
 scalar_t__ isarray (TYPE_5__*) ;
 scalar_t__ isfunc (TYPE_5__*) ;
 int printdecl (TYPE_1__*,TYPE_5__*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (scalar_t__) ;
 int stub3 (TYPE_1__*) ;

__attribute__((used)) static void doglobal(Symbol p, void *cl) {
 if (!p->defined && (p->sclass == EXTERN
 || isfunc(p->type) && p->sclass == AUTO))
  (*IR->import)(p);
 else if (!p->defined && !isfunc(p->type)
 && (p->sclass == AUTO || p->sclass == STATIC)) {
  if (isarray(p->type)
  && p->type->size == 0 && p->type->type->size > 0)
   p->type = array(p->type->type, 1, 0);
  if (p->type->size > 0) {
   defglobal(p, BSS);
   (*IR->space)(p->type->size);
   if (glevel > 0 && IR->stabsym)
    (*IR->stabsym)(p);
  } else
   error("undefined size for `%t %s'\n",
    p->type, p->name);
  p->defined = 1;
 }
 if (Pflag
 && !isfunc(p->type)
 && !p->generated && p->sclass != EXTERN)
  printdecl(p, p->type);
}
