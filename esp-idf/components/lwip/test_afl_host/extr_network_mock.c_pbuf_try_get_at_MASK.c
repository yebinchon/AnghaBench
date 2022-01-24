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
typedef  int u8_t ;
typedef  size_t u16_t ;
struct pbuf {size_t len; scalar_t__ payload; } ;

/* Variables and functions */
 struct pbuf* FUNC0 (struct pbuf const*,size_t,size_t*) ; 

int FUNC1(const struct pbuf* p, u16_t offset)
{
    u16_t q_idx;
    struct pbuf* q = FUNC0(p, offset, &q_idx);

    /* return requested data if pbuf is OK */
    if ((q != NULL) && (q->len > q_idx)) {
        return ((u8_t*)q->payload)[q_idx];
    }
    return -1;
}