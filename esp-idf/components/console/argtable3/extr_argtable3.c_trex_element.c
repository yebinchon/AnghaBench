
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int* _p; TYPE_1__* _nodes; } ;
struct TYPE_11__ {int left; unsigned short right; int next; } ;
typedef scalar_t__ TRexBool ;
typedef TYPE_2__ TRex ;


 int OP_DOT ;
 int OP_EOL ;
 int OP_EXPR ;
 int OP_GREEDY ;
 int OP_NOCAPEXPR ;

 int TREX_SYMBOL_BRANCH ;




 scalar_t__ TRex_False ;
 scalar_t__ TRex_True ;
 int _SC (char*) ;
 int isdigit (int) ;
 int trex_charnode (TYPE_2__*,scalar_t__) ;
 int trex_class (TYPE_2__*) ;
 int trex_error (TYPE_2__*,int ) ;
 int trex_expect (TYPE_2__*,char) ;
 int trex_list (TYPE_2__*) ;
 int trex_newnode (TYPE_2__*,int ) ;
 scalar_t__ trex_parsenumber (TYPE_2__*) ;

__attribute__((used)) static int trex_element(TRex *exp)
{
 int ret = -1;
 switch(*exp->_p)
 {
 case '(': {
  int expr,newn;
  exp->_p++;


  if(*exp->_p =='?') {
   exp->_p++;
   trex_expect(exp,':');
   expr = trex_newnode(exp,OP_NOCAPEXPR);
  }
  else
   expr = trex_newnode(exp,OP_EXPR);
  newn = trex_list(exp);
  exp->_nodes[expr].left = newn;
  ret = expr;
  trex_expect(exp,')');
     }
     break;
 case '[':
  exp->_p++;
  ret = trex_class(exp);
  trex_expect(exp,']');
  break;
 case 131: exp->_p++; ret = trex_newnode(exp,OP_EOL);break;
 case 132: exp->_p++; ret = trex_newnode(exp,OP_DOT);break;
 default:
  ret = trex_charnode(exp,TRex_False);
  break;
 }

 {
  TRexBool isgreedy = TRex_False;
  unsigned short p0 = 0, p1 = 0;
  switch(*exp->_p){
   case 129: p0 = 0; p1 = 0xFFFF; exp->_p++; isgreedy = TRex_True; break;
   case 130: p0 = 1; p1 = 0xFFFF; exp->_p++; isgreedy = TRex_True; break;
   case 128: p0 = 0; p1 = 1; exp->_p++; isgreedy = TRex_True; break;
   case '{':
    exp->_p++;
    if(!isdigit((int) *exp->_p)) trex_error(exp,_SC("number expected"));
    p0 = (unsigned short)trex_parsenumber(exp);

    switch(*exp->_p) {
   case '}':
    p1 = p0; exp->_p++;
    break;
   case ',':
    exp->_p++;
    p1 = 0xFFFF;
    if(isdigit((int) *exp->_p)){
     p1 = (unsigned short)trex_parsenumber(exp);
    }
    trex_expect(exp,'}');
    break;
   default:
    trex_error(exp,_SC(", or } expected"));
  }

  isgreedy = TRex_True;
  break;

  }
  if(isgreedy) {
   int nnode = trex_newnode(exp,OP_GREEDY);
   exp->_nodes[nnode].left = ret;
   exp->_nodes[nnode].right = ((p0)<<16)|p1;
   ret = nnode;
  }
 }
 if((*exp->_p != TREX_SYMBOL_BRANCH) && (*exp->_p != ')') && (*exp->_p != 129) && (*exp->_p != 130) && (*exp->_p != '\0')) {
  int nnode = trex_element(exp);
  exp->_nodes[ret].next = nnode;
 }

 return ret;
}
