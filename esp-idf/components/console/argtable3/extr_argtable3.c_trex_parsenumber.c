
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* _p; } ;
typedef TYPE_1__ TRex ;


 int _SC (char*) ;
 scalar_t__ isdigit (int) ;
 int trex_error (TYPE_1__*,int ) ;

__attribute__((used)) static int trex_parsenumber(TRex *exp)
{
 int ret = *exp->_p-'0';
 int positions = 10;
 exp->_p++;
 while(isdigit((int) *exp->_p)) {
  ret = ret*10+(*exp->_p++-'0');
  if(positions==1000000000) trex_error(exp,_SC("overflow in numeric constant"));
  positions *= 10;
 };
 return ret;
}
