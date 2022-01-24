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
struct playlist {int dummy; } ;
struct TYPE_4__ {int n_playlists; struct playlist** playlists; } ;
typedef  TYPE_1__ HLSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(HLSContext *c, struct playlist **pls, const char *url)
{
    if (*pls)
        return 0;
    if (!FUNC1(c, NULL, url, NULL))
        return FUNC0(ENOMEM);
    *pls = c->playlists[c->n_playlists - 1];
    return 0;
}