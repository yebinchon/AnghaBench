#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X ;
struct TYPE_13__ {int /*<<< orphan*/ * Pack; int /*<<< orphan*/  Cert; } ;
typedef  TYPE_1__ WPC_PACKET ;
struct TYPE_14__ {int /*<<< orphan*/  SniString; int /*<<< orphan*/  AdditionalHeaderValue; int /*<<< orphan*/  AdditionalHeaderName; } ;
typedef  TYPE_2__ URL_DATA ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_15__ {int /*<<< orphan*/  Buf; int /*<<< orphan*/  Size; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  K ;
typedef  int /*<<< orphan*/  INTERNET_SETTING ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 

PACK *FUNC12(char *url, INTERNET_SETTING *setting, UINT timeout_connect, UINT timeout_comm,
				char *function_name, PACK *pack, X *cert, K *key, void *sha1_cert_hash, UINT num_hashes, bool *cancel, UINT max_recv_size,
				char *additional_header_name, char *additional_header_value, char *sni_string)
{
	URL_DATA data;
	BUF *b, *recv;
	UINT error;
	WPC_PACKET packet;
	// Validate arguments
	if (function_name == NULL || pack == NULL)
	{
		return FUNC5(ERR_INTERNAL_ERROR);
	}

	if (FUNC6(&data, url, true, NULL) == false)
	{
		return FUNC5(ERR_INTERNAL_ERROR);
	}

	FUNC4(pack, "function", function_name);

	b = FUNC9(pack, cert, key);
	if (b == NULL)
	{
		return FUNC5(ERR_INTERNAL_ERROR);
	}

	FUNC7(b, b->Size, 0);
	FUNC11(b, 0);
	FUNC7(b, 0, 0);

	if (FUNC3(additional_header_name) == false && FUNC3(additional_header_value) == false)
	{
		FUNC8(data.AdditionalHeaderName, sizeof(data.AdditionalHeaderName), additional_header_name);
		FUNC8(data.AdditionalHeaderValue, sizeof(data.AdditionalHeaderValue), additional_header_value);
	}

	if (sni_string != NULL && FUNC3(sni_string) == false)
	{
		FUNC8(data.SniString, sizeof(data.SniString), sni_string);
	}

	recv = FUNC2(&data, setting, timeout_connect, timeout_comm, &error,
		false, b->Buf, NULL, NULL, sha1_cert_hash, num_hashes, cancel, max_recv_size,
		NULL, NULL);

	FUNC0(b);

	if (recv == NULL)
	{
		return FUNC5(error);
	}

	if (FUNC10(&packet, recv) == false)
	{
		FUNC0(recv);
		return FUNC5(ERR_PROTOCOL_ERROR);
	}

	FUNC0(recv);

	FUNC1(packet.Cert);

	return packet.Pack;
}