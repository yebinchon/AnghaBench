
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Flags; } ;
typedef TYPE_1__ MCOperandInfo ;


 int MCOI_Predicate ;

bool MCOperandInfo_isPredicate(const MCOperandInfo *m)
{
 return m->Flags & (1 << MCOI_Predicate);
}
