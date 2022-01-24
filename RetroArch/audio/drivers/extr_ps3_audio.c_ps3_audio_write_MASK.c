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
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer; int /*<<< orphan*/  cond; scalar_t__ nonblocking; } ;
typedef  TYPE_1__ ps3_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_NO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(void *data, const void *buf, size_t size)
{
   ps3_audio_t *aud = data;

   if (aud->nonblocking)
   {
      if (FUNC1(aud->buffer) < size)
         return 0;
   }

   while (FUNC1(aud->buffer) < size)
      FUNC2(&aud->cond, 0);

   FUNC3(&aud->lock, SYS_NO_TIMEOUT);
   FUNC0(aud->buffer, buf, size);
   FUNC4(&aud->lock);

   return size;
}