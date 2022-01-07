
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* _eol; int _nodes; scalar_t__ _currsubexp; int const* _bol; } ;
typedef int TRexChar ;
typedef int TRexBool ;
typedef TYPE_1__ TRex ;


 int TRex_False ;
 int TRex_True ;
 int scstrlen (int const*) ;
 int * trex_matchnode (TYPE_1__*,int ,int const*,int *) ;

TRexBool trex_match(TRex* exp,const TRexChar* text)
{
 const TRexChar* res = ((void*)0);
 exp->_bol = text;
 exp->_eol = text + scstrlen(text);
 exp->_currsubexp = 0;
 res = trex_matchnode(exp,exp->_nodes,text,((void*)0));
 if(res == ((void*)0) || res != exp->_eol)
  return TRex_False;
 return TRex_True;
}
