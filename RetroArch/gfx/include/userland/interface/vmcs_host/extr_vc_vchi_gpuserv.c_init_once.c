
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int VCOS_FUNCTION ;
 TYPE_1__ gpuserv_client ;
 int vcos_mutex_create (int *,int ) ;

__attribute__((used)) static void init_once(void)
{
   vcos_mutex_create(&gpuserv_client.lock, VCOS_FUNCTION);
}
