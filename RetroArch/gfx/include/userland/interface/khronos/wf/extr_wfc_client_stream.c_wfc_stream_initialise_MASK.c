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
typedef  int /*<<< orphan*/  WFC_STREAM_T ;
typedef  scalar_t__ VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_BLOCKPOOL_ALIGN_DEFAULT ; 
 int /*<<< orphan*/  VCOS_BLOCKPOOL_FLAG_NONE ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  WFC_LOG_LEVEL ; 
 int /*<<< orphan*/  WFC_STREAM_BLOCK_SIZE ; 
 int /*<<< orphan*/  WFC_STREAM_MAX_EXTENSIONS ; 
 int /*<<< orphan*/  log_cat ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  wfc_stream_blockpool ; 
 int /*<<< orphan*/  wfc_stream_global_lock ; 

__attribute__((used)) static void FUNC7(void)
{
   VCOS_STATUS_T status;

   FUNC4(&log_cat, WFC_LOG_LEVEL);
   FUNC3("wfc_client_stream", &log_cat);

   FUNC5("%s", VCOS_FUNCTION);

   status = FUNC6(&wfc_stream_global_lock, "WFC stream global lock");
   FUNC0(status == VCOS_SUCCESS);

   status = FUNC1(&wfc_stream_blockpool,
         WFC_STREAM_BLOCK_SIZE, sizeof(WFC_STREAM_T),
         VCOS_BLOCKPOOL_ALIGN_DEFAULT, VCOS_BLOCKPOOL_FLAG_NONE,
         "wfc stream pool");
   FUNC0(status == VCOS_SUCCESS);

   status = FUNC2(&wfc_stream_blockpool,
         WFC_STREAM_MAX_EXTENSIONS, WFC_STREAM_BLOCK_SIZE);
   FUNC0(status == VCOS_SUCCESS);
}