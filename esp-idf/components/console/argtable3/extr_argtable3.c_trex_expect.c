
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* _p; } ;
typedef TYPE_1__ TRex ;


 int _SC (char*) ;
 int trex_error (TYPE_1__*,int ) ;

__attribute__((used)) static void trex_expect(TRex *exp, int n){
 if((*exp->_p) != n)
  trex_error(exp, _SC("expected paren"));
 exp->_p++;
}
