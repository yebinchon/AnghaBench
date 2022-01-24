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
struct retro_vfs_file_handle {int dummy; } ;
struct TYPE_3__ {int error_flag; int eof_flag; struct retro_vfs_file_handle* hfile; } ;
typedef  TYPE_1__ RFILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,unsigned int,unsigned int) ; 

RFILE* FUNC3(const char *path, unsigned mode, unsigned hints)
{
   struct retro_vfs_file_handle  *fp = NULL;
   RFILE* output                     = NULL;

   if (&filestream_open_cb != NULL)
      fp = (struct retro_vfs_file_handle*)
         FUNC0(path, mode, hints);
   else
      fp = (struct retro_vfs_file_handle*)
         FUNC2(path, mode, hints);

   if (!fp)
      return NULL;

   output             = (RFILE*)FUNC1(sizeof(RFILE));
   output->error_flag = false;
   output->eof_flag   = false;
   output->hfile      = fp;
   return output;
}