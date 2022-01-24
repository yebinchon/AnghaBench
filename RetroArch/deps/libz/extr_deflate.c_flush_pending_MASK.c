#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* z_streamp ;
struct TYPE_6__ {unsigned int pending; unsigned int pending_out; unsigned int pending_buf; } ;
typedef  TYPE_2__ deflate_state ;
struct TYPE_5__ {unsigned int avail_out; unsigned int next_out; unsigned int total_out; scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(z_streamp strm)
{
   unsigned len;
   deflate_state *s = (deflate_state*)strm->state;

   FUNC0(s);
   len = s->pending;
   if (len > strm->avail_out) len = strm->avail_out;
   if (len == 0) return;

   FUNC1(strm->next_out, s->pending_out, len);
   strm->next_out  += len;
   s->pending_out  += len;
   strm->total_out += len;
   strm->avail_out  -= len;
   s->pending -= len;
   if (s->pending == 0) {
      s->pending_out = s->pending_buf;
   }
}