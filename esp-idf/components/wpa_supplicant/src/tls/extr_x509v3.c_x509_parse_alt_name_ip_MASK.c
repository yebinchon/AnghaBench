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
typedef  int /*<<< orphan*/  u8 ;
struct x509_name {size_t ip_len; int /*<<< orphan*/ * ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC4(struct x509_name *name,
				       const u8 *pos, size_t len)
{
	/* iPAddress OCTET STRING */
	FUNC3(MSG_MSGDUMP, "X509: altName - iPAddress", pos, len);
	FUNC0(name->ip);
	name->ip = FUNC1(len);
	if (name->ip == NULL)
		return -1;
	FUNC2(name->ip, pos, len);
	name->ip_len = len;
	return 0;
}