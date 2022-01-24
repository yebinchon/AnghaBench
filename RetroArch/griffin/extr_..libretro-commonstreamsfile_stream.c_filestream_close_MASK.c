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
struct retro_vfs_file_handle {int dummy; } ;
typedef  int /*<<< orphan*/  libretro_vfs_implementation_file ;
struct TYPE_4__ {struct retro_vfs_file_handle* hfile; } ;
typedef  TYPE_1__ RFILE ;

/* Variables and functions */
 int FUNC0 (struct retro_vfs_file_handle*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(RFILE *stream)
{
   int output;
   struct retro_vfs_file_handle* fp = stream->hfile;

   if (&filestream_close_cb != NULL)
      output = FUNC0(fp);
   else
      output = FUNC2((libretro_vfs_implementation_file*)fp);

   if (output == 0)
      FUNC1(stream);

   return output;
}