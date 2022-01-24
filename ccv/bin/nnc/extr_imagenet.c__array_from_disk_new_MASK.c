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
struct TYPE_3__ {char* filename; } ;
typedef  TYPE_1__ ccv_file_info_t ;
typedef  int /*<<< orphan*/  ccv_categorized_t ;
typedef  int /*<<< orphan*/  ccv_array_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int*,char*) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (char const* const) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const* const,int) ; 

__attribute__((used)) static ccv_array_t* FUNC12(const char* const list, const char* const base_dir)
{
	FILE *r = FUNC6(list, "r");
	FUNC0(r && "list doesn't exists");
	int dirlen = (base_dir != 0) ? FUNC10(base_dir) + 1 : 0;
	ccv_array_t* categorizeds = FUNC2(sizeof(ccv_categorized_t), 64, 0);
	int c;
	char* file = (char*)FUNC9(1024);
	while (FUNC8(r, "%d %s", &c, file) != EOF)
	{
		char* filename = (char*)FUNC1(1024);
		if (base_dir != 0)
		{
			FUNC11(filename, base_dir, 1024);
			filename[dirlen - 1] = '/';
		}
		FUNC11(filename + dirlen, file, 1024 - dirlen);
		ccv_file_info_t file_info = {
			.filename = filename,
		};
		// imageNet's category class starts from 1, thus, minus 1 to get 0-index
		ccv_categorized_t categorized = FUNC4(c - 1, 0, &file_info);
		FUNC3(categorizeds, &categorized);
	}
	FUNC7(file);
	FUNC5(r);
	return categorizeds;
}