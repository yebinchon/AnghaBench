
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ right; } ;
struct TYPE_4__ {scalar_t__ left; } ;
struct TYPE_6__ {int type; TYPE_2__ u1; TYPE_1__ u2; } ;
typedef int Reinst ;


 TYPE_3__* freep ;

__attribute__((used)) static Reinst*
newinst(int t)
{
 freep->type = t;
 freep->u2.left = 0;
 freep->u1.right = 0;
 return freep++;
}
