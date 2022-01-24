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
typedef  int /*<<< orphan*/  tmp3 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  relative_path ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int MAX_PATH ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int FUNC4 (char*) ; 

BUF *FUNC5(char *vroot, char *proot, char *url, char *ret_filename, UINT ret_filename_size, bool *is_index_html)
{
	char tmp[MAX_PATH];
	char tmp2[MAX_PATH];
	UINT vroot_len;
	UINT url_len;
	char relative_path[MAX_PATH];
	BUF *b;
	if (vroot == NULL || proot == NULL || url == NULL || ret_filename == NULL || is_index_html == NULL)
	{
		return NULL;
	}

	*is_index_html = false;

	if (FUNC2(url, vroot) == false)
	{
		return NULL;
	}

	vroot_len = FUNC4(vroot);
	url_len = FUNC4(url);

	FUNC3(relative_path, sizeof(relative_path), url + vroot_len);

	if (FUNC2(relative_path, "/"))
	{
		char tmp3[MAX_PATH];

		FUNC3(tmp3, sizeof(tmp3), relative_path + 1);
		FUNC3(relative_path, sizeof(relative_path), tmp3);
	}

	FUNC1(tmp, sizeof(tmp), proot, relative_path);

	// index.html
	FUNC1(tmp2, sizeof(tmp2), tmp, "index.html");
	b = FUNC0(tmp2, ret_filename, ret_filename_size);
	if (b != NULL)
	{
		*is_index_html = true;
		return b;
	}

	// dirname/filename
	FUNC3(tmp2, sizeof(tmp2), tmp);
	b = FUNC0(tmp2, ret_filename, ret_filename_size);
	if (b != NULL)
	{
		return b;
	}

	return NULL;
}