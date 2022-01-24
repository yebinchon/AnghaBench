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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,char const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned idx,
      const char *device_name, const char *driver_name,
      uint16_t dev_vid, uint16_t dev_pid)
{
   FUNC1(
         device_name,
         NULL,
         driver_name,
         idx,
         dev_vid,
         dev_pid
         );

   FUNC0("Port %d: %s.\n", idx, device_name);
}