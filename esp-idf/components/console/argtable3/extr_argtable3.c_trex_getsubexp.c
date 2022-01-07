
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _nsubexpr; int * _matches; } ;
typedef int TRexMatch ;
typedef int TRexBool ;
typedef TYPE_1__ TRex ;


 int TRex_False ;
 int TRex_True ;

TRexBool trex_getsubexp(TRex* exp, int n, TRexMatch *subexp)
{
 if( n<0 || n >= exp->_nsubexpr) return TRex_False;
 *subexp = exp->_matches[n];
 return TRex_True;
}
