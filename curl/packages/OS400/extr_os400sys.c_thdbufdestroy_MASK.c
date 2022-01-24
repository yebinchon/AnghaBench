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
typedef  scalar_t__ localkey_t ;
struct TYPE_2__ {void* buf; } ;
typedef  TYPE_1__ buffer_t ;

/* Variables and functions */
 scalar_t__ LK_LAST ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static void
FUNC1(void * private)

{
  if(private) {
    buffer_t * p = (buffer_t *) private;
    localkey_t i;

    for(i = (localkey_t) 0; i < LK_LAST; i++) {
      FUNC0(p->buf);
      p++;
      }

    FUNC0(private);
    }
}