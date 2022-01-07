
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ scope; int addressed; double ref; scalar_t__ sclass; char* name; int type; scalar_t__ defined; } ;
typedef TYPE_1__* Symbol ;


 scalar_t__ AUTO ;
 int Aflag ;
 scalar_t__ EXTERN ;
 scalar_t__ GLOBAL ;
 scalar_t__ LOCAL ;
 scalar_t__ PARAM ;
 scalar_t__ REGISTER ;
 scalar_t__ STATIC ;
 int assert (int) ;
 int error (char*,int ,char*) ;
 scalar_t__ isfunc (int ) ;
 scalar_t__ isscalar (int ) ;
 scalar_t__ isvolatile (int ) ;
 scalar_t__ level ;
 scalar_t__ regcount ;
 int warning (char*,int ,char*) ;

__attribute__((used)) static void checkref(Symbol p, void *cl) {
 if (p->scope >= PARAM
 && (isvolatile(p->type) || isfunc(p->type)))
  p->addressed = 1;
 if (Aflag >= 2 && p->defined && p->ref == 0) {
  if (p->sclass == STATIC)
   warning("static `%t %s' is not referenced\n",
    p->type, p->name);
  else if (p->scope == PARAM)
   warning("parameter `%t %s' is not referenced\n",
    p->type, p->name);
  else if (p->scope >= LOCAL && p->sclass != EXTERN)
   warning("local `%t %s' is not referenced\n",
    p->type, p->name);
 }
 if (p->sclass == AUTO
 && (p->scope == PARAM && regcount == 0
  || p->scope >= LOCAL)
 && !p->addressed && isscalar(p->type) && p->ref >= 3.0)
  p->sclass = REGISTER;
 if (level == GLOBAL && p->sclass == STATIC && !p->defined
 && isfunc(p->type) && p->ref)
  error("undefined static `%t %s'\n", p->type, p->name);
 assert(!(level == GLOBAL && p->sclass == STATIC && !p->defined && !isfunc(p->type)));
}
