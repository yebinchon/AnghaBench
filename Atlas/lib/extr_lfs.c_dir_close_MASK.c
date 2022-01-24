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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int closed; scalar_t__ dir; scalar_t__ hFile; } ;
typedef  TYPE_1__ dir_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3 (lua_State *L) {
	dir_data *d = (dir_data *)FUNC2 (L, 1);
#ifdef _WIN32
	if (!d->closed && d->hFile) {
		_findclose (d->hFile);
		d->closed = 1;
	}
#else
	if (!d->closed && d->dir) {
		FUNC1 (d->dir);
		d->closed = 1;
	}
#endif
	return 0;
}