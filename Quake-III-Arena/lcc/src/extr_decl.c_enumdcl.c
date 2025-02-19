
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef TYPE_10__* Type ;
struct TYPE_32__ {TYPE_8__* sym; } ;
struct TYPE_30__ {int idlist; } ;
struct TYPE_31__ {int defined; TYPE_7__ u; } ;
struct TYPE_29__ {long value; } ;
struct TYPE_28__ {TYPE_4__* sym; } ;
struct TYPE_24__ {long i; } ;
struct TYPE_25__ {TYPE_1__ max; } ;
struct TYPE_26__ {TYPE_2__ limits; } ;
struct TYPE_27__ {TYPE_3__ u; } ;
struct TYPE_23__ {int align; int size; TYPE_5__ u; } ;
struct TYPE_22__ {scalar_t__ scope; char src; } ;
struct TYPE_21__ {TYPE_10__* type; TYPE_6__ u; scalar_t__ sclass; int src; } ;
struct TYPE_20__ {scalar_t__ op; TYPE_16__* type; TYPE_9__ u; int align; int size; } ;
typedef TYPE_11__* Symbol ;
typedef int List ;
typedef int Coordinate ;


 int Aflag ;
 scalar_t__ ENUM ;
 int FUNC ;
 char ID ;

 scalar_t__ LOCAL ;
 int PERM ;
 int append (TYPE_11__*,int ) ;
 int error (char*,...) ;
 char gettok () ;
 int identifiers ;
 TYPE_11__* install (char*,int *,scalar_t__,int ) ;
 long intexpr (int ,int ) ;
 TYPE_16__* inttype ;
 scalar_t__ level ;
 TYPE_11__* lookup (char*,int ) ;
 int ltov (int *,int ) ;
 TYPE_10__* newstruct (scalar_t__,char*) ;
 int src ;
 char t ;
 int test (char,char*) ;
 char* token ;
 TYPE_13__* tsym ;
 int types ;
 int use (TYPE_11__*,int ) ;
 int warning (char*,...) ;
 scalar_t__ xref ;

Type enumdcl(void) {
 char *tag;
 Type ty;
 Symbol p;
 Coordinate pos;

 t = gettok();
 pos = src;
 if (t == ID) {
  tag = token;
  t = gettok();
 } else
  tag = "";
 if (t == '{') {
  static char follow[] = { 128, 0 };
  int n = 0;
  long k = -1;
  List idlist = 0;
  ty = newstruct(ENUM, tag);
  t = gettok();
  if (t != ID)
   error("expecting an enumerator identifier\n");
  while (t == ID) {
   char *id = token;
   Coordinate s;
   if (tsym && tsym->scope == level)
    error("redeclaration of `%s' previously declared at %w\n",
     token, &tsym->src);
   s = src;
   t = gettok();
   if (t == '=') {
    t = gettok();
    k = intexpr(0, 0);
   } else {
    if (k == inttype->u.sym->u.limits.max.i)
     error("overflow in value for enumeration constant `%s'\n", id);
    k++;
   }
   p = install(id, &identifiers, level, level < LOCAL ? PERM : FUNC);
   p->src = s;
   p->type = ty;
   p->sclass = ENUM;
   p->u.value = k;
   idlist = append(p, idlist);
   n++;
   if (Aflag >= 2 && n == 128)
    warning("more than 127 enumeration constants in `%t'\n", ty);
   if (t != ',')
    break;
   t = gettok();
   if (Aflag >= 2 && t == '}')
    warning("non-ANSI trailing comma in enumerator list\n");
  }
  test('}', follow);
  ty->type = inttype;
  ty->size = ty->type->size;
  ty->align = ty->type->align;
  ty->u.sym->u.idlist = ltov(&idlist, PERM);
  ty->u.sym->defined = 1;
 } else if ((p = lookup(tag, types)) != ((void*)0) && p->type->op == ENUM) {
  ty = p->type;
  if (t == ';')
   error("empty declaration\n");
 } else {
  error("unknown enumeration `%s'\n", tag);
  ty = newstruct(ENUM, tag);
  ty->type = inttype;
 }
 if (*tag && xref)
  use(p, pos);
 return ty;
}
