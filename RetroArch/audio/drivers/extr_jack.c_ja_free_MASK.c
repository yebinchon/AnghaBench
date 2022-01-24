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
struct TYPE_3__ {int shutdown; scalar_t__ cond; scalar_t__ cond_lock; int /*<<< orphan*/ ** buffer; int /*<<< orphan*/ * client; } ;
typedef  TYPE_1__ jack_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(void *data)
{
   int i;
   jack_t *jd = (jack_t*)data;

   jd->shutdown = true;

   if (jd->client != NULL)
   {
      FUNC2(jd->client);
      FUNC1(jd->client);
   }

   for (i = 0; i < 2; i++)
      if (jd->buffer[i] != NULL)
         FUNC3(jd->buffer[i]);

#ifdef HAVE_THREADS
   if (jd->cond_lock)
      slock_free(jd->cond_lock);
   if (jd->cond)
      scond_free(jd->cond);
#endif
   FUNC0(jd);
}