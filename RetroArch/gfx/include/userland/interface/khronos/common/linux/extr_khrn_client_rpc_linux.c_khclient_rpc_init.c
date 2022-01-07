
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KHR_SUCCESS ;
 int mutex ;
 scalar_t__ platform_mutex_create (int *) ;
 int * workspace ;

bool khclient_rpc_init(void)
{
   workspace = ((void*)0);
   return platform_mutex_create(&mutex) == KHR_SUCCESS;
}
