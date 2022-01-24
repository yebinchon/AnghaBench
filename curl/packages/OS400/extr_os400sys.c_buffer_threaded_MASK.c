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
typedef  int localkey_t ;
typedef  int /*<<< orphan*/  buffer_t ;

/* Variables and functions */
 scalar_t__ LK_LAST ; 
 int /*<<< orphan*/ * FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  thdkey ; 

__attribute__((used)) static char *
FUNC5(localkey_t key, long size)

{
  buffer_t * bufs;

  /* Get the buffer for the given local key in the current thread, and
     make sure it is at least `size'-byte long. Set `size' to < 0 to get
     its address only. */

  bufs = (buffer_t *) FUNC3(thdkey);

  if(!bufs) {
    if(size < 0)
      return (char *) NULL;             /* No buffer yet. */

    /* Allocate buffer descriptors for the current thread. */

    bufs = FUNC0((size_t) LK_LAST, sizeof(*bufs));
    if(!bufs)
      return (char *) NULL;

    if(FUNC4(thdkey, (void *) bufs)) {
      FUNC1(bufs);
      return (char *) NULL;
    }
  }

  return FUNC2(bufs + key, size);
}