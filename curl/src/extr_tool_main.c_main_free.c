
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GlobalConfig {int * last; int * first; } ;


 int PL_ArenaFinish () ;
 int PR_Cleanup () ;
 scalar_t__ PR_Initialized () ;
 int config_free (int *) ;
 int convert_cleanup () ;
 int curl_global_cleanup () ;
 int free_globalconfig (struct GlobalConfig*) ;
 int metalink_cleanup () ;

__attribute__((used)) static void main_free(struct GlobalConfig *config)
{


  curl_global_cleanup();
  convert_cleanup();
  metalink_cleanup();
  free_globalconfig(config);


  config_free(config->last);
  config->first = ((void*)0);
  config->last = ((void*)0);
}
