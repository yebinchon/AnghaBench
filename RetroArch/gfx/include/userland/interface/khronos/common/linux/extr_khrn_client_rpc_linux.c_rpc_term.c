
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int khrn_platform_free (scalar_t__) ;
 int mutex ;
 int platform_mutex_destroy (int *) ;
 scalar_t__ workspace ;

void rpc_term(void)
{
   if (workspace) { khrn_platform_free(workspace); }
   platform_mutex_destroy(&mutex);
}
