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
typedef  int /*<<< orphan*/  uint8_t ;
struct http_t {size_t len; scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct http_t*) ; 

uint8_t* FUNC1(struct http_t *state, size_t* len, bool accept_error)
{
   if (!state)
      return NULL;

   if (!accept_error && FUNC0(state))
   {
      if (len)
         *len=0;
      return NULL;
   }

   if (len)
      *len=state->len;

   return (uint8_t*)state->data;
}