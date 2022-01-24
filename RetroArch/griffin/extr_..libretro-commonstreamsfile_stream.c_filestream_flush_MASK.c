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
typedef  int /*<<< orphan*/  libretro_vfs_implementation_file ;
struct TYPE_3__ {int error_flag; scalar_t__ hfile; } ;
typedef  TYPE_1__ RFILE ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int vfs_error_return_value ; 

int FUNC2(RFILE *stream)
{
   int output;

   if (&filestream_flush_cb != NULL)
      output = FUNC0(stream->hfile);
   else
      output = FUNC1((libretro_vfs_implementation_file*)stream->hfile);

   if (output == vfs_error_return_value)
      stream->error_flag = true;

   return output;
}