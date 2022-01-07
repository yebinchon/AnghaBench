
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* _p; } ;
typedef char TRexChar ;
typedef TYPE_1__ TRex ;


 int TREX_SYMBOL_ESCAPE_CHAR ;
 int _SC (char*) ;
 int scisprint (int) ;
 int trex_error (TYPE_1__*,int ) ;

__attribute__((used)) static TRexChar trex_escapechar(TRex *exp)
{
 if(*exp->_p == TREX_SYMBOL_ESCAPE_CHAR){
  exp->_p++;
  switch(*exp->_p) {
  case 'v': exp->_p++; return '\v';
  case 'n': exp->_p++; return '\n';
  case 't': exp->_p++; return '\t';
  case 'r': exp->_p++; return '\r';
  case 'f': exp->_p++; return '\f';
  default: return (*exp->_p++);
  }
 } else if(!scisprint((int) *exp->_p)) trex_error(exp,_SC("letter expected"));
 return (*exp->_p++);
}
