
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ want_prefix; } ;
struct TYPE_6__ {TYPE_1__ flags; } ;


 int VCOS_FUNCTION ;
 int VCOS_LOG_ERROR ;
 TYPE_2__ usrvcsm_log_category ;
 int vcos_log_register (char*,TYPE_2__*) ;
 int vcos_log_set_level (TYPE_2__*,int ) ;
 int vcos_mutex_create (int *,int ) ;
 int vcsm_mutex ;

__attribute__((used)) static void vcsm_init_once(void)
{
   vcos_mutex_create(&vcsm_mutex, VCOS_FUNCTION);
   vcos_log_set_level(&usrvcsm_log_category, VCOS_LOG_ERROR);
   usrvcsm_log_category.flags.want_prefix = 0;
   vcos_log_register( "usrvcsm", &usrvcsm_log_category );
}
