
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* _p; TYPE_1__* _nodes; } ;
struct TYPE_6__ {int next; int left; int right; } ;
typedef TYPE_2__ TRex ;


 int OP_BOL ;
 int OP_OR ;
 scalar_t__ TREX_SYMBOL_BEGINNING_OF_STRING ;
 scalar_t__ TREX_SYMBOL_BRANCH ;
 int trex_element (TYPE_2__*) ;
 int trex_newnode (TYPE_2__*,int ) ;

__attribute__((used)) static int trex_list(TRex *exp)
{
 int ret=-1,e;
 if(*exp->_p == TREX_SYMBOL_BEGINNING_OF_STRING) {
  exp->_p++;
  ret = trex_newnode(exp,OP_BOL);
 }
 e = trex_element(exp);
 if(ret != -1) {
  exp->_nodes[ret].next = e;
 }
 else ret = e;

 if(*exp->_p == TREX_SYMBOL_BRANCH) {
  int temp,tright;
  exp->_p++;
  temp = trex_newnode(exp,OP_OR);
  exp->_nodes[temp].left = ret;
  tright = trex_list(exp);
  exp->_nodes[temp].right = tright;
  ret = temp;
 }
 return ret;
}
