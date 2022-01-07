
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ end_handle; scalar_t__ start_handle; } ;
struct peer_svc {TYPE_1__ svc; } ;



int
peer_svc_is_empty(const struct peer_svc *svc)
{
    return svc->svc.end_handle <= svc->svc.start_handle;
}
