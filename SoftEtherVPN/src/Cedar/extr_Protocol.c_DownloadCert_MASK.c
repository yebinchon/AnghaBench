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
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  URL_DATA ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CERT_HTTP_DOWNLOAD_MAXSIZE ; 
 int /*<<< orphan*/  CERT_HTTP_DOWNLOAD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 

X *FUNC7(char *url)
{
	BUF *b;
	URL_DATA url_data;
	X *ret = NULL;
	// Validate arguments
	if (FUNC5(url))
	{
		return NULL;
	}

	FUNC1("Trying to download a cert from %s ...\n", url);

	if (FUNC6(&url_data, url, false, NULL) == false)
	{
		FUNC1("Download failed.\n");
		return NULL;
	}

	b = FUNC3(&url_data, NULL, CERT_HTTP_DOWNLOAD_TIMEOUT, CERT_HTTP_DOWNLOAD_TIMEOUT,
		NULL, false, NULL, NULL, NULL, NULL, NULL, CERT_HTTP_DOWNLOAD_MAXSIZE);

	if (b == NULL)
	{
		FUNC1("Download failed.\n");
		return NULL;
	}

	ret = FUNC0(b, FUNC4(b));

	FUNC2(b);

	FUNC1("Download ok.\n");
	return ret;
}