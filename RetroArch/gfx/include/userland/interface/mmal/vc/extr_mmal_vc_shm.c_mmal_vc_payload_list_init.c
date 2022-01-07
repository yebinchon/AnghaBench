
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 TYPE_1__ mmal_vc_payload_list ;
 int vcos_mutex_create (int *,char*) ;

__attribute__((used)) static void mmal_vc_payload_list_init()
{
   vcos_mutex_create(&mmal_vc_payload_list.lock, "mmal_vc_payload_list");
}
