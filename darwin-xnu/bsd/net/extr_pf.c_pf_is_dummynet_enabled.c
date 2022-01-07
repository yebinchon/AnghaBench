
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_6__ {TYPE_2__* rules; } ;
struct TYPE_4__ {int ptr; } ;
struct TYPE_5__ {TYPE_1__ active; } ;


 int DUMMYNET_LOADED ;
 int FALSE ;
 int PF_IS_ENABLED ;
 size_t PF_RULESET_DUMMYNET ;
 int TAILQ_EMPTY (int ) ;
 int TRUE ;
 scalar_t__ __probable (int) ;
 TYPE_3__ pf_main_ruleset ;

__attribute__((used)) static inline boolean_t
pf_is_dummynet_enabled(void)
{
 return (FALSE);

}
