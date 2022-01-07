
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_2__ {int test_info_resp; } ;


 TYPE_1__ l2cb ;

void l2cu_set_info_rsp_mask (UINT32 mask)
{
    l2cb.test_info_resp = mask;
}
