
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int controller_xmit_window; int num_lm_acl_bufs; } ;


 TYPE_1__ l2cb ;

void l2c_link_processs_num_bufs (UINT16 num_lm_acl_bufs)
{
    l2cb.num_lm_acl_bufs = l2cb.controller_xmit_window = num_lm_acl_bufs;

}
