#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* qboolean ;
typedef  int fsMode_t ;
typedef  int fileHandle_t ;
struct TYPE_4__ {int /*<<< orphan*/  o; int /*<<< orphan*/  z; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
struct TYPE_6__ {scalar_t__ zipFile; int fileSize; void* handleSync; void* streamed; TYPE_2__ handleFiles; int /*<<< orphan*/  baseOffset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
#define  FS_APPEND 131 
#define  FS_APPEND_SYNC 130 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*,int*,scalar_t__) ; 
 int FUNC3 (char const*) ; 
#define  FS_READ 129 
#define  FS_WRITE 128 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 TYPE_3__* fsh ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int		FUNC7( const char *qpath, fileHandle_t *f, fsMode_t mode ) {
	int		r;
	qboolean	sync;

	sync = qfalse;

	switch( mode ) {
	case FS_READ:
		r = FUNC2( qpath, f, qtrue );
		break;
	case FS_WRITE:
		*f = FUNC3( qpath );
		r = 0;
		if (*f == 0) {
			r = -1;
		}
		break;
	case FS_APPEND_SYNC:
		sync = qtrue;
	case FS_APPEND:
		*f = FUNC1( qpath );
		r = 0;
		if (*f == 0) {
			r = -1;
		}
		break;
	default:
		FUNC0( ERR_FATAL, "FSH_FOpenFile: bad mode" );
		return -1;
	}

	if (!f) {
		return r;
	}

	if ( *f ) {
		if (fsh[*f].zipFile == qtrue) {
			fsh[*f].baseOffset = FUNC6(fsh[*f].handleFiles.file.z);
		} else {
			fsh[*f].baseOffset = FUNC5(fsh[*f].handleFiles.file.o);
		}
		fsh[*f].fileSize = r;
		fsh[*f].streamed = qfalse;

		if (mode == FS_READ) {
			FUNC4( *f, 0x4000 );
			fsh[*f].streamed = qtrue;
		}
	}
	fsh[*f].handleSync = sync;

	return r;
}