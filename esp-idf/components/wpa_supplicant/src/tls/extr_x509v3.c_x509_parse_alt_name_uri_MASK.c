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
struct x509_name {char* uri; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC2 (char*) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct x509_name *name,
				   const u8 *pos, size_t len)
{
	/* uniformResourceIdentifier IA5String */
	FUNC4(MSG_MSGDUMP,
			  "X509: altName - uniformResourceIdentifier",
			  pos, len);
	FUNC0(name->uri);
	name->uri = (char *)FUNC3(len + 1);
	if (name->uri == NULL)
		return -1;
	FUNC1(name->uri, pos, len);
	if (FUNC2(name->uri) != len) {
		FUNC5(MSG_INFO, "X509: Reject certificate with "
			   "embedded NUL byte in uniformResourceIdentifier "
			   "(%s[NUL])", name->uri);
		FUNC0(name->uri);
		name->uri = NULL;
		return -1;
	}
	return 0;
}