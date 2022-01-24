#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  rd; int /*<<< orphan*/  buffer; int /*<<< orphan*/  cond_lock; int /*<<< orphan*/  cond; scalar_t__ has_error; scalar_t__ nonblock; } ;
typedef  TYPE_1__ rsd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(void *data, const void *buf, size_t size)
{
   rsd_t *rsd = (rsd_t*)data;

   if (rsd->has_error)
      return -1;

   if (rsd->nonblock)
   {
      size_t avail, write_amt;

      FUNC2(rsd->rd);

      avail = FUNC1(rsd->buffer);
      write_amt = avail > size ? size : avail;

      FUNC0(rsd->buffer, buf, write_amt);
      FUNC3(rsd->rd);
      return write_amt;
   }
   else
   {
      size_t written = 0;
      while (written < size && !rsd->has_error)
      {
         size_t avail;
         FUNC2(rsd->rd);

         avail = FUNC1(rsd->buffer);

         if (avail == 0)
         {
            FUNC3(rsd->rd);
            if (!rsd->has_error)
            {
               FUNC5(rsd->cond_lock);
               FUNC4(rsd->cond, rsd->cond_lock);
               FUNC6(rsd->cond_lock);
            }
         }
         else
         {
            size_t write_amt = size - written > avail ? avail : size - written;
            FUNC0(rsd->buffer, (const char*)buf + written, write_amt);
            FUNC3(rsd->rd);
            written += write_amt;
         }
      }
      return written;
   }
}