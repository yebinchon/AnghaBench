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
typedef  int /*<<< orphan*/  MMAL_PARAMETER_DRC_STRENGTH_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_PARAMETER_DRC_STRENGTH_OFF ; 
 int /*<<< orphan*/  drc_mode_map ; 
 int /*<<< orphan*/  drc_mode_map_size ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static MMAL_PARAMETER_DRC_STRENGTH_T FUNC2(const char *str)
{
   int i = FUNC0(str, drc_mode_map, drc_mode_map_size);

   if( i != -1)
      return (MMAL_PARAMETER_DRC_STRENGTH_T)i;

   FUNC1("Unknown DRC level: %s", str);
   return MMAL_PARAMETER_DRC_STRENGTH_OFF;
}