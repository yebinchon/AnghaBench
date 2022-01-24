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
struct dirent {int /*<<< orphan*/  d_name; } ;
struct _finddata_t {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int closed; long hFile; int /*<<< orphan*/  dir; int /*<<< orphan*/  pattern; } ;
typedef  TYPE_1__ dir_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ,struct _finddata_t*) ; 
 long FUNC2 (long,struct _finddata_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11 (lua_State *L) {
#ifdef _WIN32
	struct _finddata_t c_file;
#else
	struct dirent *entry;
#endif
	dir_data *d = (dir_data *)FUNC7 (L, FUNC8 (1));
	FUNC4 (L, !d->closed, 1, "closed directory");
#ifdef _WIN32
	if (d->hFile == 0L) { /* first entry */
		if ((d->hFile = _findfirst (d->pattern, &c_file)) == -1L) {
			lua_pushnil (L);
			lua_pushstring (L, strerror (errno));
			return 2;
		} else {
			lua_pushstring (L, c_file.name);
			return 1;
		}
	} else { /* next entry */
		if (_findnext (d->hFile, &c_file) == -1L) {
			/* no more entries => close directory */
			_findclose (d->hFile);
			d->closed = 1;
			return 0;
		} else {
			lua_pushstring (L, c_file.name);
			return 1;
		}
	}
#else
	if ((entry = FUNC9 (d->dir)) != NULL) {
		FUNC6 (L, entry->d_name);
		return 1;
	} else {
		/* no more entries => close directory */
		FUNC3 (d->dir);
		d->closed = 1;
		return 0;
	}
#endif
}