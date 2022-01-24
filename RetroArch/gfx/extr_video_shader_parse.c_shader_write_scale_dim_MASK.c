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
typedef  int /*<<< orphan*/  key ;
typedef  enum gfx_scale_type { ____Placeholder_gfx_scale_type } gfx_scale_type ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int RARCH_SCALE_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,unsigned int) ; 

__attribute__((used)) static void FUNC5(config_file_t *conf,
      const char *dim,
      enum gfx_scale_type type, float scale,
      unsigned absolute, unsigned i)
{
   char key[64];

   key[0] = '\0';

   FUNC4(key, sizeof(key), "scale_type_%s%u", dim, i);
   FUNC2(conf, key, FUNC3(type));

   FUNC4(key, sizeof(key), "scale_%s%u", dim, i);
   if (type == RARCH_SCALE_ABSOLUTE)
      FUNC1(conf, key, absolute);
   else
      FUNC0(conf, key, scale);
}