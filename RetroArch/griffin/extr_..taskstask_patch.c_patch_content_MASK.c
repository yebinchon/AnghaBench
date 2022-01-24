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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DID_NOT_FIND_A_VALID_CONTENT_PATCH ; 
 int /*<<< orphan*/  MSG_SEVERAL_PATCHES_ARE_EXPLICITLY_DEFINED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(
      bool is_ips_pref,
      bool is_bps_pref,
      bool is_ups_pref,
      const char *name_ips,
      const char *name_bps,
      const char *name_ups,
      uint8_t **buf,
      void *data)
{
   ssize_t *size    = (ssize_t*)data;
   bool allow_ups   = !is_bps_pref && !is_ips_pref;
   bool allow_ips   = !is_ups_pref && !is_bps_pref;
   bool allow_bps   = !is_ups_pref && !is_ips_pref;

   if (    (unsigned)is_ips_pref
         + (unsigned)is_bps_pref
         + (unsigned)is_ups_pref > 1)
   {
      FUNC1("%s\n",
            FUNC2(MSG_SEVERAL_PATCHES_ARE_EXPLICITLY_DEFINED));
      return false;
   }

   if (     !FUNC4(allow_ips, name_ips, buf, size)
         && !FUNC3(allow_bps, name_bps, buf, size)
         && !FUNC5(allow_ups, name_ups, buf, size))
   {
      FUNC0("%s\n",
            FUNC2(MSG_DID_NOT_FIND_A_VALID_CONTENT_PATCH));
      return false;
   }

   return true;
}