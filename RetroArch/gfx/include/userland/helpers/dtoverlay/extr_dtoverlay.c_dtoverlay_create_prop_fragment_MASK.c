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
typedef  int /*<<< orphan*/  fragment_name ;
struct TYPE_3__ {int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char const*,void const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

int FUNC4(DTBLOB_T *dtb, int idx, int target_phandle,
                                   const char *prop_name, const void *prop_data,
                                   int prop_len)
{
	char fragment_name[20];
	int frag_off, ovl_off;
	int ret;
	FUNC3(fragment_name, sizeof(fragment_name), "fragment-%u", idx);
	frag_off = FUNC0(dtb->fdt, 0, fragment_name);
	if (frag_off < 0)
		return frag_off;
	ret = FUNC2(dtb->fdt, frag_off, "target", target_phandle);
	if (ret < 0)
		return ret;
	ovl_off = FUNC0(dtb->fdt, frag_off, "__overlay__");
	if (ovl_off < 0)
		return ovl_off;
	return FUNC1(dtb->fdt, ovl_off, prop_name, prop_data, prop_len);
}