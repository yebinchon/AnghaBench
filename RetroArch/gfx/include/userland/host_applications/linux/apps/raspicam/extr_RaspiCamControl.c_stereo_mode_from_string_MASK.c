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
typedef  int /*<<< orphan*/  MMAL_STEREOSCOPIC_MODE_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_STEREOSCOPIC_MODE_NONE ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stereo_mode_map ; 
 int /*<<< orphan*/  stereo_mode_map_size ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static MMAL_STEREOSCOPIC_MODE_T FUNC2(const char *str)
{
   int i = FUNC0(str, stereo_mode_map, stereo_mode_map_size);

   if( i != -1)
      return (MMAL_STEREOSCOPIC_MODE_T)i;

   FUNC1("Unknown metering mode: %s", str);
   return MMAL_STEREOSCOPIC_MODE_NONE;
}