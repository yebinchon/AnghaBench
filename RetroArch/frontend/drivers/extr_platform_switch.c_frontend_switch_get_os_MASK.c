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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  result_t ;
typedef  int /*<<< orphan*/  ipc_request_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
typedef  int /*<<< orphan*/  ipc_buffer_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buffer_ptrs ; 
 int /*<<< orphan*/  fail ; 
 int /*<<< orphan*/  fail_object ; 
 int /*<<< orphan*/  fail_sm ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipc_default_response_fmt ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC14(
      char *s, size_t len, int *major, int *minor)
{
#ifdef HAVE_LIBNX
   u32 hosVersion;
#else
   int patch;
   char firmware_version[0x100];
   result_t r; /* used by LIB_ASSERT_OK macros */
   ipc_object_t set_sys;
   ipc_request_t rq;
#endif

   FUNC13(s, "Horizon OS", len);

#ifdef HAVE_LIBNX
   *major = 0;
   *minor = 0;

   hosVersion = hosversionGet();
   *major     = HOSVER_MAJOR(hosVersion);
   *minor     = HOSVER_MINOR(hosVersion);
#else
   /* defaults in case we error out */
   *major     = 0;
   *minor     = 0;

   FUNC2(fail, FUNC11());
   FUNC2(fail_sm, FUNC10(&set_sys, "set:sys"));

   rq = FUNC6(3);
   ipc_buffer_t buffers[] = {
      FUNC5(firmware_version, 0x100, 0x1a),
   };
   FUNC7(rq, buffers, buffer_ptrs);

   FUNC2(fail_object, FUNC8(set_sys, &rq, &ipc_default_response_fmt));

   FUNC12(firmware_version + 0x68, "%d.%d.%d", major, minor, &patch);

fail_object:
   FUNC4(set_sys);
fail_sm:
   FUNC9();
fail:
   return;
#endif
}