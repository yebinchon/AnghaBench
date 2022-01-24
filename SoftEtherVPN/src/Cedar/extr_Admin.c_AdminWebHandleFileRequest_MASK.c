#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  url2 ;
typedef  int /*<<< orphan*/  url ;
typedef  int /*<<< orphan*/  filename ;
typedef  size_t UINT ;
struct TYPE_6__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;
typedef  int /*<<< orphan*/  CONNECTION ;
typedef  TYPE_1__ BUF ;
typedef  int /*<<< orphan*/  ADMIN ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (char*,char*,char*,char*,int,int*) ; 
 int FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 size_t FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*) ; 

bool FUNC13(ADMIN *a, CONNECTION *c, SOCK *s, HTTP_HEADER *h, char *url_src, char *query_string, char *virtual_root_dir, char *physical_root_dir)
{
	bool ret = false;
	char url[MAX_PATH];
	UINT i, len;
	if (a == NULL || c == NULL || s == NULL || h == NULL || query_string == NULL ||
		virtual_root_dir == NULL || physical_root_dir == NULL)
	{
		return false;
	}

	FUNC10(url, sizeof(url), url_src);

	len = FUNC11(url);
	for (i = 0;i < len;i++)
	{
		if (url[i] == '\\')
		{
			url[i] = '/';
		}
	}

	// Is dangerous URL?
	if (FUNC8(url, "..") || FUNC8(url, "//") || FUNC8(url, "\\\\") || FUNC8(url, "/\\") || FUNC8(url, "\\/"))
	{
		ret = FUNC2(s, h);
	}
	else
	{
		char filename[MAX_PATH];
		bool is_index_file = false;

		BUF *b = FUNC4(virtual_root_dir, physical_root_dir, url,
			filename, sizeof(filename), &is_index_file);

		if (b == NULL)
		{
			ret = FUNC2(s, h);
		}
		else
		{
			if (is_index_file && FUNC5(url, "/") == false)
			{
				char url2[MAX_PATH];
				FUNC10(url2, sizeof(url2), url);
				FUNC9(url2, sizeof(url2), "/");
				ret = FUNC1(s, url2, query_string, h);
			}
			else if (is_index_file == false && FUNC5(url, "/"))
			{
				char url2[MAX_PATH];
				FUNC12(url2, sizeof(url2), url, "/");
				ret = FUNC1(s, url2, query_string, h);
			}
			else
			{
				BUF *b2 = FUNC0(b, filename, 0);
				char *mime = FUNC7(filename);

				if (mime == NULL)
				{
					mime = "application/octet-stream";
				}

				ret = FUNC3(s, 200, "OK", b2->Buf, b2->Size, mime, NULL, NULL, h);

				FUNC6(b2);
			}
			FUNC6(b);
		}
	}

	return ret;
}