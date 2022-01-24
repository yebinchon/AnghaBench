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
struct zlib_trans_stream {int /*<<< orphan*/  z; scalar_t__ inited; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zlib_trans_stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *data)
{
   struct zlib_trans_stream *z = (struct zlib_trans_stream *) data;
   if (!z)
      return;
   if (z->inited)
      FUNC1(&z->z);
   if (z)
      FUNC0(z);
}