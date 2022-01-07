
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct symbol {int defined; TYPE_3__* type; } ;
typedef TYPE_3__* Type ;
struct TYPE_11__ {int oldstyle; TYPE_3__** proto; } ;
struct TYPE_12__ {TYPE_1__ f; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
typedef struct symbol* Symbol ;
typedef int * List ;


 int Aflag ;

 size_t ELLIPSIS ;
 int FUNC ;
 size_t ID ;

 int PERM ;
 size_t REGISTER ;

 int * append (struct symbol*,int *) ;
 struct symbol* dclparam (int,char*,TYPE_3__*,int *) ;
 TYPE_3__* dclr (int ,char**,int *,int) ;
 int error (char*) ;
 int expect (char) ;
 size_t gettok () ;
 int hasproto (TYPE_3__*) ;
 TYPE_3__* inttype ;
 scalar_t__ istypename (size_t,int ) ;
 scalar_t__* kind ;
 scalar_t__ length (int *) ;
 struct symbol** ltov (int **,int ) ;
 TYPE_3__** newarray (scalar_t__,int,int ) ;
 int skipto (char,char*) ;
 int specifier (int*) ;
 int src ;
 char* stringd (int) ;
 size_t t ;
 char* token ;
 int tsym ;
 TYPE_3__* voidtype ;
 int warning (char*) ;

__attribute__((used)) static Symbol *parameters(Type fty) {
 List list = ((void*)0);
 Symbol *params;

 if (kind[t] == 128 || istypename(t, tsym)) {
  int n = 0;
  Type ty1 = ((void*)0);
  for (;;) {
   Type ty;
   int sclass = 0;
   char *id = ((void*)0);
   if (ty1 && t == ELLIPSIS) {
    static struct symbol sentinel;
    if (sentinel.type == ((void*)0)) {
     sentinel.type = voidtype;
     sentinel.defined = 1;
    }
    if (ty1 == voidtype)
     error("illegal formal parameter types\n");
    list = append(&sentinel, list);
    t = gettok();
    break;
   }
   if (!istypename(t, tsym) && t != REGISTER)
    error("missing parameter type\n");
   n++;
   ty = dclr(specifier(&sclass), &id, ((void*)0), 1);
   if ( ty == voidtype && (ty1 || id)
   || ty1 == voidtype)
    error("illegal formal parameter types\n");
   if (id == ((void*)0))
    id = stringd(n);
   if (ty != voidtype)
    list = append(dclparam(sclass, id, ty, &src), list);
   if (Aflag >= 1 && !hasproto(ty))
    warning("missing prototype\n");
   if (ty1 == ((void*)0))
    ty1 = ty;
   if (t != ',')
    break;
   t = gettok();
  }
  fty->u.f.proto = newarray(length(list) + 1,
   sizeof (Type *), PERM);
  params = ltov(&list, FUNC);
  for (n = 0; params[n]; n++)
   fty->u.f.proto[n] = params[n]->type;
  fty->u.f.proto[n] = ((void*)0);
  fty->u.f.oldstyle = 0;
 } else {
  if (t == ID)
   for (;;) {
    Symbol p;
    if (t != ID) {
     error("expecting an identifier\n");
     break;
    }
    p = dclparam(0, token, inttype, &src);
    p->defined = 0;
    list = append(p, list);
    t = gettok();
    if (t != ',')
     break;
    t = gettok();
   }
  params = ltov(&list, FUNC);
  fty->u.f.proto = ((void*)0);
  fty->u.f.oldstyle = 1;
 }
 if (t != ')') {
  static char stop[] = { 130, 128, 129, ')', 0 };
  expect(')');
  skipto('{', stop);
 }
 if (t == ')')
  t = gettok();
 return params;
}
