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
typedef  int /*<<< orphan*/  full_path ;
typedef  int /*<<< orphan*/  exe_dir ;
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  Buffer; } ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  TYPE_1__ RPC_READ_LOG_FILE ;
typedef  int /*<<< orphan*/  IO ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FTP_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 void* FUNC12 (scalar_t__) ; 

void FUNC13(SERVER *s, char *filepath, UINT offset, RPC_READ_LOG_FILE *t)
{
	char exe_dir[MAX_PATH], full_path[MAX_PATH];
	IO *o;
	// Validate arguments
	if (s == NULL || t == NULL || filepath == NULL)
	{
		return;
	}

	FUNC11(t, sizeof(RPC_READ_LOG_FILE));

	FUNC7(exe_dir, sizeof(exe_dir));
	FUNC5(full_path, sizeof(full_path), "%s/%s", exe_dir, filepath);

	// Read file
	o = FUNC1(full_path, false, false);
	if (o != NULL)
	{
		UINT filesize = FUNC4(o);

		if (offset < filesize)
		{
			UINT readsize = FUNC8(filesize - offset, FTP_BLOCK_SIZE);
			void *buf = FUNC12(readsize);

			FUNC3(o, FILE_BEGIN, offset);
			FUNC2(o, buf, readsize);

			t->Buffer = FUNC9();
			FUNC10(t->Buffer, buf, readsize);
			FUNC6(buf);
		}

		FUNC0(o);
	}
}