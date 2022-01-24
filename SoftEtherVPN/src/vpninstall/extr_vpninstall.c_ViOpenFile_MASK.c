#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  size ;
typedef  int /*<<< orphan*/  fullpath ;
typedef  int /*<<< orphan*/  exedir ;
typedef  int /*<<< orphan*/  errorcode ;
struct TYPE_4__ {int InternetFile; int FileSize; int /*<<< orphan*/ * io; int /*<<< orphan*/ * hHttpFile; int /*<<< orphan*/ * hInternet; } ;
typedef  TYPE_1__ VI_FILE ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  IO ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  DEFAULT_USER_AGENT ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int HTTP_QUERY_CONTENT_LENGTH ; 
 int HTTP_QUERY_FLAG_NUMBER ; 
 int HTTP_QUERY_STATUS_CODE ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ *) ; 
 int INTERNET_FLAG_NO_CACHE_WRITE ; 
 int INTERNET_FLAG_RELOAD ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_PRECONFIG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 TYPE_1__* FUNC11 (int) ; 

VI_FILE *FUNC12(char *path)
{
	VI_FILE *f;
	// Validate arguments
	if (path == NULL)
	{
		return NULL;
	}

	if (FUNC10(path))
	{
		HINTERNET hHttpFile;
		HINTERNET hInternet = FUNC7(DEFAULT_USER_AGENT,
			INTERNET_OPEN_TYPE_PRECONFIG,
			NULL, NULL, 0);
		UINT size;
		UINT sizesize;

		if (hInternet == NULL)
		{
			return NULL;
		}

		hHttpFile = FUNC8(hInternet, path, NULL, 0,
			INTERNET_FLAG_NO_CACHE_WRITE | INTERNET_FLAG_RELOAD, 0);

		if (hHttpFile == NULL)
		{
			FUNC6(hInternet);
			return NULL;
		}

		size = 0;
		sizesize = sizeof(size);

		if (FUNC9(path, "ftp://"))
		{
			// ftp
			DWORD high = 0;

			size = FUNC3(hHttpFile, &high);
		}
		else
		{
			UINT errorcode = 0;
			UINT errorcode_size = sizeof(errorcode);

			// http
			if (FUNC5(hHttpFile, HTTP_QUERY_CONTENT_LENGTH | HTTP_QUERY_FLAG_NUMBER,
				&size, &sizesize, NULL) == false)
			{
				size = 0;
			}

			if (FUNC5(hHttpFile, HTTP_QUERY_STATUS_CODE | HTTP_QUERY_FLAG_NUMBER,
				&errorcode, &errorcode_size, NULL) == false ||
				(errorcode / 100) != 2)
			{
				// HTTP getting error
				FUNC6(hInternet);
				FUNC6(hHttpFile);
				return NULL;
			}
		}

		f = FUNC11(sizeof(VI_FILE));
		f->InternetFile = true;
		f->hInternet = hInternet;
		f->hHttpFile = hHttpFile;
		f->FileSize = size;

		return f;
	}
	else
	{
		IO *io;
		char fullpath[MAX_PATH];
		char exedir[MAX_PATH];

		FUNC4(exedir, sizeof(exedir));

		FUNC0(fullpath, sizeof(fullpath), exedir, path);

		io = FUNC1(fullpath, false);
		if (io == NULL)
		{
			return NULL;
		}

		f = FUNC11(sizeof(VI_FILE));
		f->InternetFile = false;
		f->FileSize = FUNC2(io);
		f->io = io;

		return f;
	}
}