#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  executableMetadata_s ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ argData_s ;

/* Variables and functions */
 int /*<<< orphan*/  __system_retAddr ; 
 int /*<<< orphan*/  bootloaderJump ; 
 scalar_t__ fileHandle ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(const char* path, argData_s* args, executableMetadata_s* em)
{
	fileHandle = FUNC0(path);
	if (fileHandle==0)
		return;
	FUNC1(args->buf, sizeof(args->buf));
	__system_retAddr = bootloaderJump;
}