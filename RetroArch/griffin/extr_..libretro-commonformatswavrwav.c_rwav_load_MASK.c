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
typedef  int /*<<< orphan*/  rwav_t ;
struct TYPE_4__ {scalar_t__ step; scalar_t__ j; scalar_t__ i; scalar_t__ size; int /*<<< orphan*/ * data; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ rwav_iterator_t ;
typedef  enum rwav_state { ____Placeholder_rwav_state } rwav_state ;

/* Variables and functions */
 int RWAV_ITERATE_MORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC1 (TYPE_1__*) ; 

enum rwav_state FUNC2(rwav_t* out, const void* buf, size_t size)
{
   enum rwav_state res;
   rwav_iterator_t iter;

   iter.out             = NULL;
   iter.data            = NULL;
   iter.size            = 0;
   iter.i               = 0;
   iter.j               = 0;
   iter.step            = 0;

   FUNC0(&iter, out, buf, size);

   do
   {
      res = FUNC1(&iter);
   }while (res == RWAV_ITERATE_MORE);

   return res;
}