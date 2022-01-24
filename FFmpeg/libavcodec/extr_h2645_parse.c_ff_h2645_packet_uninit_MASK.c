#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* skipped_bytes_pos; } ;
struct TYPE_5__ {scalar_t__ rbsp_buffer_size; scalar_t__ rbsp_buffer_alloc_size; TYPE_4__* rbsp_buffer; scalar_t__ rbsp_buffer_ref; } ;
struct TYPE_6__ {int nals_allocated; int nal_buffer_size; TYPE_1__ rbsp; TYPE_4__* nals; } ;
typedef  TYPE_2__ H2645Packet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__**) ; 

void FUNC2(H2645Packet *pkt)
{
    int i;
    for (i = 0; i < pkt->nals_allocated; i++) {
        FUNC1(&pkt->nals[i].skipped_bytes_pos);
    }
    FUNC1(&pkt->nals);
    pkt->nals_allocated = pkt->nal_buffer_size = 0;
    if (pkt->rbsp.rbsp_buffer_ref) {
        FUNC0(&pkt->rbsp.rbsp_buffer_ref);
        pkt->rbsp.rbsp_buffer = NULL;
    } else
        FUNC1(&pkt->rbsp.rbsp_buffer);
    pkt->rbsp.rbsp_buffer_alloc_size = pkt->rbsp.rbsp_buffer_size = 0;
}