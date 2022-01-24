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
typedef  int /*<<< orphan*/  input_driver ;
typedef  int /*<<< orphan*/  ident ;
typedef  int /*<<< orphan*/  config_file_t ;
struct TYPE_3__ {int vid; int pid; char* name; } ;
typedef  TYPE_1__ autoconfig_params_t ;

/* Variables and functions */
 int BLISSBOX_PID ; 
 int BLISSBOX_VID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(config_file_t *conf,
      autoconfig_params_t *params)
{
   char ident[256];
   char input_driver[32];
   int tmp_int                = 0;
   int              input_vid = 0;
   int              input_pid = 0;
   int                  score = 0;

   ident[0] = input_driver[0] = '\0';

   FUNC0(conf, "input_device", ident, sizeof(ident));
   FUNC0(conf, "input_driver", input_driver, sizeof(input_driver));

   if (FUNC1  (conf, "input_vendor_id", &tmp_int))
      input_vid = tmp_int;

   if (FUNC1  (conf, "input_product_id", &tmp_int))
      input_pid = tmp_int;

   if (params->vid == BLISSBOX_VID)
      input_pid = BLISSBOX_PID;

   /* Check for VID/PID */
   if (     (params->vid == input_vid)
         && (params->pid == input_pid)
         && (params->vid != 0)
         && (params->pid != 0)
         && (params->vid != BLISSBOX_VID)
         && (params->pid != BLISSBOX_PID))
      score += 3;

   /* Check for name match */
   if (!FUNC2(params->name)
         && !FUNC2(ident)
         && FUNC3(ident, params->name))
      score += 2;

   return score;
}