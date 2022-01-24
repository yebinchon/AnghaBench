#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ new_chap; } ;
typedef  TYPE_2__ hb_psdemux_t ;
struct TYPE_6__ {scalar_t__ new_chap; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef  TYPE_3__ hb_buffer_t ;

/* Variables and functions */

__attribute__((used)) static inline void FUNC0( hb_psdemux_t *state, hb_buffer_t *buf )
{
    if ( state && buf->s.new_chap )
    {
        state->new_chap = buf->s.new_chap;
        buf->s.new_chap = 0;
    }
}