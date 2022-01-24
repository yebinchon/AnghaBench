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
struct nbio_linux_t {size_t len; void* ptr; int /*<<< orphan*/  busy; } ;

/* Variables and functions */

__attribute__((used)) static void *FUNC0(void *data, size_t* len)
{
   struct nbio_linux_t* handle = (struct nbio_linux_t*)data;
   if (!handle)
      return NULL;
   if (len)
      *len = handle->len;
   if (!handle->busy)
      return handle->ptr;
   return NULL;
}