#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  url2 ;
struct TYPE_10__ {char* SniString; } ;
typedef  TYPE_1__ URL_DATA ;
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int Size; int /*<<< orphan*/ * Buf; } ;
struct TYPE_11__ {int /*<<< orphan*/  InternetSetting; } ;
typedef  TYPE_2__ DDNS_CLIENT ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  DDNS_CERT_HASH ; 
 int /*<<< orphan*/  DDNS_COMM_TIMEOUT ; 
 int /*<<< orphan*/  DDNS_CONNECT_TIMEOUT ; 
 char* DDNS_REPLACE_URL2_FOR_EAST_BFLETS ; 
 char* DDNS_REPLACE_URL2_FOR_EAST_NGN ; 
 char* DDNS_REPLACE_URL2_FOR_WEST_NGN ; 
 char* DDNS_SNI_VER_STRING ; 
 char* DDNS_URL2_V4_ALT ; 
 char* DDNS_URL2_V4_GLOBAL ; 
 char* DDNS_URL2_V6_ALT ; 
 char* DDNS_URL2_V6_GLOBAL ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ ERR_CONNECT_FAILED ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_PROTOCOL_ERROR ; 
 scalar_t__ FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE ; 
 scalar_t__ FLETS_DETECT_TYPE_EAST_NGN_PRIVATE ; 
 scalar_t__ FLETS_DETECT_TYPE_WEST_NGN_PRIVATE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 int MAX_SIZE ; 
 int FUNC7 (TYPE_1__*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char*) ; 
 int SHA1_SIZE ; 
 int FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,char*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (int) ; 

UINT FUNC14(DDNS_CLIENT *c, bool ipv6, char *dst, UINT dst_size, bool use_ssl, char *replace_v6)
{
	char *url;
	char url2[MAX_SIZE];
	UINT ret = ERR_INTERNAL_ERROR;
	URL_DATA data;
	BUF *recv;
	BUF *cert_hash = NULL;
	// Validate arguments
	if (dst == NULL || c == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	if (ipv6 == false)
	{
		url = DDNS_URL2_V4_GLOBAL;

		if (FUNC6())
		{
			url = DDNS_URL2_V4_ALT;
		}
	}
	else
	{
		url = DDNS_URL2_V6_GLOBAL;

		if (FUNC6())
		{
			url = DDNS_URL2_V6_ALT;
		}

		if (replace_v6)
		{
			url = replace_v6;
		}
	}

	FUNC2(url2, sizeof(url2), "%s?v=%I64u", url, FUNC8());

	if (use_ssl)
	{
		FUNC9(url2, sizeof(url2), url2, "http://", "https://");
	}


	if (FUNC7(&data, url2, false, NULL) == false)
	{
		return ERR_INTERNAL_ERROR;
	}

	cert_hash = FUNC12(DDNS_CERT_HASH);

	FUNC11(data.SniString, sizeof(data.SniString), DDNS_SNI_VER_STRING);

	recv = FUNC5(&data, (ipv6 ? NULL : &c->InternetSetting), DDNS_CONNECT_TIMEOUT, DDNS_COMM_TIMEOUT, &ret, false, NULL, NULL,
		NULL, ((cert_hash != NULL && (cert_hash->Size % SHA1_SIZE) == 0) ? cert_hash->Buf : NULL),
		(cert_hash != NULL ? cert_hash->Size / SHA1_SIZE : 0), NULL, 0, NULL, NULL);

	FUNC4(cert_hash);

	if (recv != NULL)
	{
		char *str = FUNC13(recv->Size + 1);
		FUNC0(str, recv->Buf, recv->Size);

		if (FUNC10(str, "IP=") == false)
		{
			ret = ERR_PROTOCOL_ERROR;
		}
		else
		{
			FUNC11(dst, dst_size, str + 3);
			ret = ERR_NO_ERROR;
		}

		FUNC3(str);
		FUNC4(recv);
	}

	if (FUNC6() == false)
	{
		if (ret == ERR_CONNECT_FAILED)
		{
			if (ipv6 && replace_v6 == NULL && use_ssl == false)
			{
				UINT type = FUNC1();

				if (type & FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE && ret != ERR_NO_ERROR)
				{
					ret = FUNC14(c, ipv6, dst, dst_size, use_ssl, DDNS_REPLACE_URL2_FOR_EAST_BFLETS);
				}

				if (type & FLETS_DETECT_TYPE_EAST_NGN_PRIVATE && ret != ERR_NO_ERROR)
				{
					ret = FUNC14(c, ipv6, dst, dst_size, use_ssl, DDNS_REPLACE_URL2_FOR_EAST_NGN);
				}

				if (type & FLETS_DETECT_TYPE_WEST_NGN_PRIVATE && ret != ERR_NO_ERROR)
				{
					ret = FUNC14(c, ipv6, dst, dst_size, use_ssl, DDNS_REPLACE_URL2_FOR_WEST_NGN);
				}
			}
		}
	}

	return ret;
}