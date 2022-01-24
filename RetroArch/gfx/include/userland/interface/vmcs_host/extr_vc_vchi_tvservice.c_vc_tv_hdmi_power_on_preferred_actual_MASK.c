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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  param ;
struct TYPE_3__ {int /*<<< orphan*/  in_3d; } ;
typedef  TYPE_1__ TV_HDMI_ON_PREFERRED_PARAM_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC_TV_HDMI_ON_PREFERRED ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(uint32_t in_3d) {
   TV_HDMI_ON_PREFERRED_PARAM_T param;
   int success;

   FUNC2("[%s]", VCOS_FUNCTION);
   param.in_3d = FUNC0(in_3d);

   success = FUNC1( VC_TV_HDMI_ON_PREFERRED, &param, sizeof(param), 1);
   return success;
}