
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct llinfo_arp {TYPE_1__* la_llreach; } ;
typedef TYPE_2__* route_t ;
typedef int boolean_t ;
struct TYPE_5__ {struct llinfo_arp* rt_llinfo; } ;
struct TYPE_4__ {scalar_t__ lr_probes; } ;


 int FALSE ;
 int TRUE ;

boolean_t
arp_is_entry_probing (route_t p_route)
{
 struct llinfo_arp *llinfo = p_route->rt_llinfo;

 if (llinfo != ((void*)0) &&
     llinfo->la_llreach != ((void*)0) &&
     llinfo->la_llreach->lr_probes != 0)
  return (TRUE);

 return (FALSE);
}
