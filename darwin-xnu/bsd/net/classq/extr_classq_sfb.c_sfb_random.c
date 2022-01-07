
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sfb {TYPE_1__* sfb_ifp; } ;
struct TYPE_2__ {int if_snd; } ;


 int IFCQ_CONVERT_LOCK (int *) ;
 int RandomULong () ;

__attribute__((used)) static u_int32_t
sfb_random(struct sfb *sp)
{
 IFCQ_CONVERT_LOCK(&sp->sfb_ifp->if_snd);
 return (RandomULong());
}
