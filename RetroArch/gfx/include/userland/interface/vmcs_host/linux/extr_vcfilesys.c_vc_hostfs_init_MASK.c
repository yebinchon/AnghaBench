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
typedef  int /*<<< orphan*/  file_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FILE_INFO_TABLE_CHUNK_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  file_info_table_len ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  hostfs_log_cat ; 
 int /*<<< orphan*/ * p_file_info_table ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
   // This hostfs module is not thread safe - it allocaes a block
   // of memory and uses it without any kind of locking.
   //
   // It offers no advantage of stdio, and so most clients should
   // not use it. Arguably FILESYS should use it in order to get
   // the FIFO support.

   const char *thread_name = FUNC7(FUNC6());
   if (FUNC4(thread_name, "FILESYS") != 0 && FUNC4(thread_name, "HFilesys") != 0)
   {
      FUNC3(stderr,"%s: vc_hostfs is deprecated. Please use stdio\n",
              FUNC7(FUNC6()));
   }

   FUNC5("hostfs", &hostfs_log_cat);
   FUNC0("init");
   // Allocate memory for the file info table
   p_file_info_table = (file_info_t *)FUNC2( FILE_INFO_TABLE_CHUNK_LEN, sizeof( file_info_t ) );
   FUNC1( p_file_info_table != NULL );
   if (p_file_info_table)
   {
      file_info_table_len = FILE_INFO_TABLE_CHUNK_LEN;
   }
}