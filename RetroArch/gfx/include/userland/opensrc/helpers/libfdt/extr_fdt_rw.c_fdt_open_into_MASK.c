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
struct fdt_reserve_entry {int dummy; } ;
struct fdt_header {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 scalar_t__ FDT_END ; 
 int FDT_ERR_NOSPACE ; 
 int /*<<< orphan*/  FDT_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (void const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (void const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (void const*) ; 
 int FUNC5 (void const*,void*,int) ; 
 scalar_t__ FUNC6 (void const*,int,int*) ; 
 int FUNC7 (void const*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int) ; 
 int /*<<< orphan*/  FUNC12 (void*,int) ; 
 int /*<<< orphan*/  FUNC13 (void*,int) ; 
 int FUNC14 (void const*) ; 
 int FUNC15 (void const*) ; 
 int FUNC16 (void const*) ; 
 int FUNC17 (void const*) ; 
 int /*<<< orphan*/  FUNC18 (void*,char*,int) ; 

int FUNC19(const void *fdt, void *buf, int bufsize)
{
	int err;
	int mem_rsv_size, struct_size;
	int newsize;
	const char *fdtstart = fdt;
	const char *fdtend = fdtstart + FUNC16(fdt);
	char *tmp;

	FUNC1(fdt);

	mem_rsv_size = (FUNC7(fdt)+1)
		* sizeof(struct fdt_reserve_entry);

	if (FUNC17(fdt) >= 17) {
		struct_size = FUNC15(fdt);
	} else {
		struct_size = 0;
		while (FUNC6(fdt, struct_size, &struct_size) != FDT_END)
			;
		if (struct_size < 0)
			return struct_size;
	}

	if (!FUNC2(fdt, mem_rsv_size, struct_size)) {
		/* no further work necessary */
		err = FUNC5(fdt, buf, bufsize);
		if (err)
			return err;
		FUNC13(buf, 17);
		FUNC11(buf, struct_size);
		FUNC12(buf, bufsize);
		return 0;
	}

	/* Need to reorder */
	newsize = FUNC0(sizeof(struct fdt_header), 8) + mem_rsv_size
		+ struct_size + FUNC14(fdt);

	if (bufsize < newsize)
		return -FDT_ERR_NOSPACE;

	/* First attempt to build converted tree at beginning of buffer */
	tmp = buf;
	/* But if that overlaps with the old tree... */
	if (((tmp + newsize) > fdtstart) && (tmp < fdtend)) {
		/* Try right after the old tree instead */
		tmp = (char *)(uintptr_t)fdtend;
		if ((tmp + newsize) > ((char *)buf + bufsize))
			return -FDT_ERR_NOSPACE;
	}

	FUNC3(fdt, tmp, mem_rsv_size, struct_size);
	FUNC18(buf, tmp, newsize);

	FUNC10(buf, FDT_MAGIC);
	FUNC12(buf, bufsize);
	FUNC13(buf, 17);
	FUNC9(buf, 16);
	FUNC8(buf, FUNC4(fdt));

	return 0;
}