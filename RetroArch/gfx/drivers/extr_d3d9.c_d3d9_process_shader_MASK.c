#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* shader_path; } ;
typedef  TYPE_1__ d3d9_video_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char const*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static bool FUNC3(d3d9_video_t *d3d)
{
   const char *shader_path = d3d->shader_path;
   if (d3d && !FUNC2(shader_path))
      return FUNC0(d3d, shader_path);

   return FUNC1(d3d);
}