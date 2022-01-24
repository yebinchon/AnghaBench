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
typedef  int /*<<< orphan*/  header ;
typedef  int USHORT ;
struct TYPE_4__ {int Flag1; int Flag2; void* NumQuery; void* TransactionId; } ;
typedef  TYPE_1__ DNSV4_HEADER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

BUF *FUNC6(char *hostname, USHORT tran_id)
{
	BUF *buf = FUNC2();
	DNSV4_HEADER header;

	FUNC5(&header, sizeof(header));

	header.TransactionId = FUNC1(tran_id);
	header.Flag1 = 0x01;
	header.Flag2 = 0x00;
	header.NumQuery = FUNC1(1);

	FUNC4(buf, &header, sizeof(header));

	FUNC0(buf, hostname, false);

	FUNC3(buf);

	return buf;
}