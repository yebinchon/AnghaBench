#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct udp_pcb {struct udp_pcb* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udp_pcb*) ; 
 struct udp_pcb* udp_pcbs ; 

void FUNC1(void)
{
    struct udp_pcb *pcb = udp_pcbs;

    while (pcb){
        FUNC0(pcb);
        pcb = pcb->next;
    }
}