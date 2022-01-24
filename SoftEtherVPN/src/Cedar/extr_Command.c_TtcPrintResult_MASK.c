#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_8__ {int /*<<< orphan*/  (* Write ) (TYPE_2__*,char*) ;} ;
struct TYPE_7__ {int Double; int /*<<< orphan*/  BpsTotal; int /*<<< orphan*/  BpsUpload; int /*<<< orphan*/  BpsDownload; int /*<<< orphan*/  NumBytesTotal; int /*<<< orphan*/  NumBytesUpload; int /*<<< orphan*/  NumBytesDownload; scalar_t__ Raw; int /*<<< orphan*/  Span; } ;
typedef  TYPE_1__ TT_RESULT ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_2__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 

void FUNC12(CONSOLE *c, TT_RESULT *res)
{
	CT *ct;
	wchar_t tmp[MAX_SIZE];
	wchar_t tmp1[MAX_SIZE];
	wchar_t tmp2[MAX_SIZE];
	char str[MAX_SIZE];
	// Validate arguments
	if (c == NULL || res == NULL)
	{
		return;
	}

	c->Write(c, FUNC10("TTC_RES_TITLE"));

	ct = FUNC3();
	FUNC2(ct, FUNC10("TTC_RES_COLUMN_1"), false);
	FUNC2(ct, FUNC10("TTC_RES_COLUMN_2"), true);
	FUNC2(ct, FUNC10("TTC_RES_COLUMN_3"), true);

	// Time that was used to measure
	FUNC4(str, sizeof(str), res->Span);
	FUNC6(tmp, sizeof(tmp), str);
	FUNC1(ct, FUNC10("TTC_RES_SPAN"), tmp, L"");

	// Correct the data for Ethernet frame
	FUNC1(ct, FUNC10("TTC_RES_ETHER"), res->Raw ? FUNC10("SEC_NO") : FUNC10("SEC_YES"), L"");

	// Amount of communication data of download direction
	FUNC7(str, sizeof(str), res->NumBytesDownload);
	FUNC9(tmp1, sizeof(tmp1), L"%S Bytes", str);
	FUNC8(str, sizeof(str), res->NumBytesDownload);
	FUNC6(tmp2, sizeof(tmp2), str);
	FUNC1(ct, FUNC10("TTC_RES_BYTES_DOWNLOAD"), tmp1, tmp2);

	// Amount of communication data of upload direction
	FUNC7(str, sizeof(str), res->NumBytesUpload);
	FUNC9(tmp1, sizeof(tmp1), L"%S Bytes", str);
	FUNC8(str, sizeof(str), res->NumBytesUpload);
	FUNC6(tmp2, sizeof(tmp2), str);
	FUNC1(ct, FUNC10("TTC_RES_BYTES_UPLOAD"), tmp1, tmp2);

	// Total amount of communication data
	FUNC7(str, sizeof(str), res->NumBytesTotal);
	FUNC9(tmp1, sizeof(tmp1), L"%S Bytes", str);
	FUNC8(str, sizeof(str), res->NumBytesTotal);
	FUNC6(tmp2, sizeof(tmp2), str);
	FUNC1(ct, FUNC10("TTC_RES_BYTES_TOTAL"), tmp1, tmp2);

	// Calculate the total throughput of input and output of the relay equipment
	FUNC1(ct, FUNC10("TTC_RES_DOUBLE"), (res->Double == false) ? FUNC10("SEC_NO") : FUNC10("SEC_YES"), L"");

	// Average throughput of download direction
	FUNC7(str, sizeof(str), res->BpsDownload);
	FUNC9(tmp1, sizeof(tmp1), L"%S bps", str);
	FUNC8(str, sizeof(str), res->BpsDownload);
	FUNC5(str, sizeof(str), str, "Bytes", "bps");
	FUNC6(tmp2, sizeof(tmp2), str);
	FUNC1(ct, FUNC10("TTC_RES_BPS_DOWNLOAD"), tmp1, tmp2);

	// Average throughput of upload direction
	FUNC7(str, sizeof(str), res->BpsUpload);
	FUNC9(tmp1, sizeof(tmp1), L"%S bps", str);
	FUNC8(str, sizeof(str), res->BpsUpload);
	FUNC5(str, sizeof(str), str, "Bytes", "bps");
	FUNC6(tmp2, sizeof(tmp2), str);
	FUNC1(ct, FUNC10("TTC_RES_BPS_UPLOAD"), tmp1, tmp2);

	// Total average throughput
	FUNC7(str, sizeof(str), res->BpsTotal);
	FUNC9(tmp1, sizeof(tmp1), L"%S bps", str);
	FUNC8(str, sizeof(str), res->BpsTotal);
	FUNC5(str, sizeof(str), str, "Bytes", "bps");
	FUNC6(tmp2, sizeof(tmp2), str);
	FUNC1(ct, FUNC10("TTC_RES_BPS_TOTAL"), tmp1, tmp2);

	FUNC0(ct, c);
}