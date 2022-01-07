
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int* _p; TYPE_1__* _nodes; } ;
struct TYPE_7__ {char left; } ;
typedef char TRexChar ;
typedef int TRexBool ;
typedef TYPE_2__ TRex ;


 char OP_WB ;
 int TREX_SYMBOL_ESCAPE_CHAR ;
 int _SC (char*) ;
 int scisprint (int) ;
 int trex_charclass (TYPE_2__*,char) ;
 int trex_error (TYPE_2__*,int ) ;
 int trex_newnode (TYPE_2__*,char) ;

__attribute__((used)) static int trex_charnode(TRex *exp,TRexBool isclass)
{
 TRexChar t;
 if(*exp->_p == TREX_SYMBOL_ESCAPE_CHAR) {
  exp->_p++;
  switch(*exp->_p) {
   case 'n': exp->_p++; return trex_newnode(exp,'\n');
   case 't': exp->_p++; return trex_newnode(exp,'\t');
   case 'r': exp->_p++; return trex_newnode(exp,'\r');
   case 'f': exp->_p++; return trex_newnode(exp,'\f');
   case 'v': exp->_p++; return trex_newnode(exp,'\v');
   case 'a': case 'A': case 'w': case 'W': case 's': case 'S':
   case 'd': case 'D': case 'x': case 'X': case 'c': case 'C':
   case 'p': case 'P': case 'l': case 'u':
    {
    t = *exp->_p; exp->_p++;
    return trex_charclass(exp,t);
    }
   case 'b':
   case 'B':
    if(!isclass) {
     int node = trex_newnode(exp,OP_WB);
     exp->_nodes[node].left = *exp->_p;
     exp->_p++;
     return node;
    }

   default:
    t = *exp->_p; exp->_p++;
    return trex_newnode(exp,t);
  }
 }
 else if(!scisprint((int) *exp->_p)) {

  trex_error(exp,_SC("letter expected"));
 }
 t = *exp->_p; exp->_p++;
 return trex_newnode(exp,t);
}
