
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_28__ ;
typedef struct TYPE_37__ TYPE_22__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_18__ ;
typedef struct TYPE_34__ TYPE_12__ ;
typedef struct TYPE_33__ TYPE_11__ ;
typedef struct TYPE_32__ TYPE_10__ ;


typedef int Type ;
typedef TYPE_10__* Tree ;
struct TYPE_45__ {int label; } ;
struct TYPE_46__ {TYPE_8__ l; } ;
struct TYPE_43__ {int label; } ;
struct TYPE_44__ {TYPE_6__ f; } ;
struct TYPE_41__ {int label; } ;
struct TYPE_42__ {TYPE_4__ l; } ;
struct TYPE_39__ {int i; int u; } ;
struct TYPE_40__ {TYPE_2__ v; } ;
struct TYPE_38__ {TYPE_7__ u; int type; } ;
struct TYPE_37__ {TYPE_5__ u; } ;
struct TYPE_36__ {int type; } ;
struct TYPE_35__ {int op; } ;
struct TYPE_34__ {int lab; TYPE_22__* deflab; TYPE_1__* sym; } ;
struct TYPE_33__ {TYPE_9__ u; int src; int scope; } ;
struct TYPE_32__ {TYPE_3__ u; TYPE_18__* type; int op; } ;
typedef TYPE_11__* Symbol ;
typedef TYPE_12__* Swtch ;


 int Aflag ;


 int CNST ;



 int EOI ;

 int FUNC ;



 int LABELS ;

 int STMT ;

 int UNSIGNED ;

 int branch (int) ;
 int caselabel (TYPE_12__*,int ,int) ;
 TYPE_10__* cast (TYPE_10__*,int ) ;
 TYPE_28__* cfunc ;
 int compound (int,TYPE_12__*,int) ;
 TYPE_10__* constexpr (int ) ;
 int deallocate (int ) ;
 int definelab (int) ;
 int definept (int *) ;
 int dostmt (void*,TYPE_12__*,int) ;
 int error (char*) ;
 int expect (char) ;
 int * expr (int ) ;
 TYPE_10__* expr0 (int ) ;
 int extend (int ,TYPE_18__*) ;
 TYPE_22__* findlabel (int) ;
 int forstmt (void*,TYPE_12__*,int) ;
 int freturn (int ) ;
 int generic (int ) ;
 void* genlabel (int) ;
 char getchr () ;
 int gettok () ;
 int glevel ;
 int ifstmt (void*,int,TYPE_12__*,int) ;
 TYPE_11__* install (int ,int *,int ,int ) ;
 int isint (TYPE_18__*) ;
 int const* kind ;
 int listnodes (TYPE_10__*,int ,int ) ;
 TYPE_11__* lookup (int ,int ) ;
 int needconst ;
 int nodecount ;
 float refinc ;
 int retcode (int *) ;
 int skipto (int ,char*) ;
 int src ;
 int stmtlabel () ;
 int stmtlabs ;
 int swstmt (int,void*,int) ;
 int t ;
 int test (char,char*) ;
 int token ;
 int use (TYPE_11__*,int ) ;
 int voidtype ;
 int walk (int *,int ,int ) ;
 int warning (char*) ;
 int whilestmt (void*,TYPE_12__*,int) ;

void statement(int loop, Swtch swp, int lev) {
 float ref = refinc;

 if (Aflag >= 2 && lev == 15)
  warning("more than 15 levels of nested statements\n");
 switch (t) {
 case 131: ifstmt(genlabel(2), loop, swp, lev + 1);
 break;
 case 128: whilestmt(genlabel(3), swp, lev + 1); break;
 case 135: dostmt(genlabel(3), swp, lev + 1); expect(';');
     break;

 case 134: forstmt(genlabel(4), swp, lev + 1);
 break;
 case 139: walk(((void*)0), 0, 0);
         definept(((void*)0));
         if (swp && swp->lab > loop)
          branch(swp->lab + 1);
         else if (loop)
          branch(loop + 2);
         else
          error("illegal break statement\n");
         t = gettok(); expect(';');
        break;

 case 137: walk(((void*)0), 0, 0);
         definept(((void*)0));
         if (loop)
          branch(loop + 1);
         else
          error("illegal continue statement\n");
         t = gettok(); expect(';');
           break;

 case 129: swstmt(loop, genlabel(2), lev + 1);
 break;
 case 138: {
          int lab = genlabel(1);
          if (swp == ((void*)0))
           error("illegal case label\n");
          definelab(lab);
          while (t == 138) {
           static char stop[] = { 131, 132, 0 };
           Tree p;
           t = gettok();
           p = constexpr(0);
           if (generic(p->op) == CNST && isint(p->type)) {
            if (swp) {
             needconst++;
             p = cast(p, swp->sym->type);
             if (p->type->op == UNSIGNED)
              p->u.v.i = extend(p->u.v.u, p->type);
             needconst--;
             caselabel(swp, p->u.v.i, lab);
            }
           } else
            error("case label must be a constant integer expression\n");

           test(':', stop);
          }
          statement(loop, swp, lev);
         } break;
 case 136: if (swp == ((void*)0))
          error("illegal default label\n");
         else if (swp->deflab)
          error("extra default label\n");
         else {
          swp->deflab = findlabel(swp->lab);
          definelab(swp->deflab->u.l.label);
         }
         t = gettok();
         expect(':');
         statement(loop, swp, lev); break;
 case 130: {
          Type rty = freturn(cfunc->type);
          t = gettok();
          definept(((void*)0));
          if (t != ';')
           if (rty == voidtype) {
            error("extraneous return value\n");
            expr(0);
            retcode(((void*)0));
           } else
            retcode(expr(0));
          else {
           if (rty != voidtype)
            warning("missing return value\n");
           retcode(((void*)0));
          }
          branch(cfunc->u.f.label);
         } expect(';');
         break;

 case '{': compound(loop, swp, lev + 1); break;
 case ';': definept(((void*)0)); t = gettok(); break;
 case 133: walk(((void*)0), 0, 0);
         definept(((void*)0));
         t = gettok();
         if (t == 132) {
          Symbol p = lookup(token, stmtlabs);
          if (p == ((void*)0)) {
    p = install(token, &stmtlabs, 0, FUNC);
    p->scope = LABELS;
    p->u.l.label = genlabel(1);
    p->src = src;
   }
          use(p, src);
          branch(p->u.l.label);
          t = gettok();
         } else
          error("missing label in goto\n"); expect(';');
       break;

 case 132: if (getchr() == ':') {
          stmtlabel();
          statement(loop, swp, lev);
          break;
         }
 default: definept(((void*)0));
         if (kind[t] != 132) {
          error("unrecognized statement\n");
          t = gettok();
         } else {
          Tree e = expr0(0);
          listnodes(e, 0, 0);
          if (nodecount == 0 || nodecount > 200)
           walk(((void*)0), 0, 0);
          else if (glevel) walk(((void*)0), 0, 0);
          deallocate(STMT);
         } expect(';');
      break;

 }
 if (kind[t] != 131 && kind[t] != 132
 && t != '}' && t != EOI) {
  static char stop[] = { 131, 132, '}', 0 };
  error("illegal statement termination\n");
  skipto(0, stop);
 }
 refinc = ref;
}
