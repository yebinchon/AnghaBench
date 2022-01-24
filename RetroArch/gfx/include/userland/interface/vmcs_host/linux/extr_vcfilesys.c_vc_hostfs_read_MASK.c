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
struct TYPE_2__ {long read_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,void*,unsigned int,int) ; 
 int file_info_table_len ; 
 TYPE_1__* p_file_info_table ; 
 scalar_t__ FUNC2 (int,void*,unsigned int) ; 

int FUNC3(int fildes, void *buf, unsigned int nbyte)
{
   if (fildes >= file_info_table_len)
   {
      // File descriptor not in table, so this is an error
      FUNC0("vc_hostfs_read(%d,%p,%u): invalid fildes", fildes, buf, nbyte);
      return -1;
   }
   else
   {
      // There is entry in the file info table for this file descriptor, so go
      // ahead and handle the read
      int ret = (int) FUNC2(fildes, buf, nbyte);
      FUNC1("vc_hostfs_read(%d,%p,%u) = %d", fildes, buf, nbyte, ret);
      if (ret > 0)
      {
         p_file_info_table[fildes].read_offset += (long) ret;
      }
      return ret;
   }
}