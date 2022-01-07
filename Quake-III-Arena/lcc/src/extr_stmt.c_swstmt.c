
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct swtch {int lab; scalar_t__ ncases; TYPE_9__* deflab; void* labels; void* values; int size; TYPE_8__* sym; } ;
typedef TYPE_4__* Tree ;
struct TYPE_24__ {scalar_t__ ref; } ;
struct TYPE_23__ {scalar_t__ type; } ;
struct TYPE_22__ {TYPE_3__* next; struct TYPE_22__* prev; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__** kids; int op; } ;
struct TYPE_20__ {TYPE_5__* prev; } ;
struct TYPE_18__ {TYPE_8__* sym; } ;
struct TYPE_19__ {TYPE_1__ u; int op; } ;
typedef TYPE_5__* Code ;


 int FUNC ;
 scalar_t__ INDIR ;
 int REGISTER ;
 int SWSIZE ;
 int Switch ;
 int addlocal (TYPE_8__*) ;
 int * asgn (TYPE_8__*,TYPE_4__*) ;
 int branch (int) ;
 TYPE_4__* cast (TYPE_4__*,int ) ;
 TYPE_5__* code (int ) ;
 TYPE_5__* codelist ;
 int definelab (int) ;
 int definept (int *) ;
 int error (char*,scalar_t__) ;
 int expect (char) ;
 TYPE_4__* expr (char) ;
 TYPE_9__* findlabel (int) ;
 scalar_t__ generic (int ) ;
 TYPE_8__* genident (int ,scalar_t__,int ) ;
 int gettok () ;
 int inttype ;
 scalar_t__ isaddrop (int ) ;
 int isint (scalar_t__) ;
 int isvolatile (scalar_t__) ;
 int level ;
 void* newarray (int ,int,int ) ;
 int promote (scalar_t__) ;
 double refinc ;
 TYPE_4__* retype (TYPE_4__*,int ) ;
 int statement (int,struct swtch*,int) ;
 int swgen (struct swtch*) ;
 int t ;
 int walk (int *,int ,int ) ;
 int warning (char*) ;

__attribute__((used)) static void swstmt(int loop, int lab, int lev) {
 Tree e;
 struct swtch sw;
 Code head, tail;

 t = gettok();
 expect('(');
 definept(((void*)0));
 e = expr(')');
 if (!isint(e->type)) {
  error("illegal type `%t' in switch expression\n",
   e->type);
  e = retype(e, inttype);
 }
 e = cast(e, promote(e->type));
 if (generic(e->op) == INDIR && isaddrop(e->kids[0]->op)
 && e->kids[0]->u.sym->type == e->type
 && !isvolatile(e->kids[0]->u.sym->type)) {
  sw.sym = e->kids[0]->u.sym;
  walk(((void*)0), 0, 0);
 } else {
  sw.sym = genident(REGISTER, e->type, level);
  addlocal(sw.sym);
  walk(asgn(sw.sym, e), 0, 0);
 }
 head = code(Switch);
 sw.lab = lab;
 sw.deflab = ((void*)0);
 sw.ncases = 0;
 sw.size = SWSIZE;
 sw.values = newarray(SWSIZE, sizeof *sw.values, FUNC);
 sw.labels = newarray(SWSIZE, sizeof *sw.labels, FUNC);
 refinc /= 10.0;
 statement(loop, &sw, lev);
 if (sw.deflab == ((void*)0)) {
  sw.deflab = findlabel(lab);
  definelab(lab);
  if (sw.ncases == 0)
   warning("switch statement with no cases\n");
 }
 if (findlabel(lab + 1)->ref)
  definelab(lab + 1);
 tail = codelist;
 codelist = head->prev;
 codelist->next = head->prev = ((void*)0);
 if (sw.ncases > 0)
  swgen(&sw);
 branch(lab);
 head->next->prev = codelist;
 codelist->next = head->next;
 codelist = tail;
}
