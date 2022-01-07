
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _nsubexpr; } ;
typedef TYPE_1__ TRex ;



int trex_getsubexpcount(TRex* exp)
{
 return exp->_nsubexpr;
}
