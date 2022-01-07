
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_4__ {int b_validend; int b_flags; } ;


 int B_EOT ;

__attribute__((used)) static void
cluster_EOT(buf_t cbp_head, buf_t cbp_tail, int zero_offset)
{
        cbp_head->b_validend = zero_offset;
        cbp_tail->b_flags |= B_EOT;
}
