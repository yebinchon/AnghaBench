#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rate; scalar_t__ channels; int /*<<< orphan*/ * port; int /*<<< orphan*/ * host; } ;
typedef  TYPE_1__ rsound_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

int FUNC2(rsound_t *rsound)
{
   FUNC0(rsound != NULL);
   FUNC0(rsound->rate > 0);
   FUNC0(rsound->channels > 0);
   FUNC0(rsound->host != NULL);
   FUNC0(rsound->port != NULL);

   if ( FUNC1(rsound) < 0 )
      return -1;

   return 0;
}