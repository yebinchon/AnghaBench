#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int format; } ;
typedef  TYPE_1__ hb_container_t ;
typedef  int /*<<< orphan*/  gchar ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*) ; 

const hb_container_t*
FUNC2(const gchar *name)
{
    // First find an enabled muxer
    int format = FUNC0(name);

    // Now find the matching muxer info
    const hb_container_t *mux, *first;
    for (first = mux = FUNC1(NULL); mux != NULL;
         mux = FUNC1(mux))
    {
        if (format == mux->format)
        {
            return mux;
        }
    }
    // Return a default container if nothing matches
    return first;
}