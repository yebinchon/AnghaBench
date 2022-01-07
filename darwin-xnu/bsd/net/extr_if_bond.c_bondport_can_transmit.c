
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef TYPE_1__* bondport_ref ;
typedef scalar_t__ __darwin_time_t ;
struct TYPE_3__ {scalar_t__ po_last_transmit_secs; scalar_t__ po_n_transmit; } ;


 scalar_t__ LACP_PACKET_RATE ;

__attribute__((used)) static int
bondport_can_transmit(bondport_ref p, int32_t current_secs,
        __darwin_time_t * next_secs)
{
    if (p->po_last_transmit_secs != current_secs) {
 p->po_last_transmit_secs = current_secs;
 p->po_n_transmit = 0;
    }
    if (p->po_n_transmit < LACP_PACKET_RATE) {
 p->po_n_transmit++;
 return (1);
    }
    if (next_secs != ((void*)0)) {
 *next_secs = current_secs + 1;
    }
    return (0);
}
