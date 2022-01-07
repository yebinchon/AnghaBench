
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int reg_slc0_len; } ;
struct TYPE_4__ {TYPE_1__ pkt_len; } ;


 TYPE_2__ HOST ;

__attribute__((used)) static inline uint32_t send_length_read(void)
{
    return HOST.pkt_len.reg_slc0_len;
}
