#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  drv; scalar_t__ nonblocking; } ;
typedef  TYPE_1__ libnx_audren_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(void *data, const void *buf, size_t size)
{
   libnx_audren_t *aud = (libnx_audren_t*)data;
   size_t written = 0;

   if (!aud)
      return -1;

   while(written < size)
   {
      written += FUNC2(aud, buf + written, size - written);
      if(written != size)
      {
         if(aud->nonblocking)
         {
            break;
         }
         else
         {
            FUNC3(&aud->update_lock);
            FUNC1(&aud->drv);
            FUNC4(&aud->update_lock);
            FUNC0();
         }
      }
   }

   return written;
}