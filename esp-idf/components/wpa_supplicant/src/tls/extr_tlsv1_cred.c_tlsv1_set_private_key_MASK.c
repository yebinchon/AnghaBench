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
typedef  int /*<<< orphan*/  const u8 ;
struct tlsv1_credentials {int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (struct tlsv1_credentials*,int /*<<< orphan*/  const*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC4(struct tlsv1_credentials *cred,
			  const char *private_key,
			  const char *private_key_passwd,
			  const u8 *private_key_blob,
			  size_t private_key_blob_len)
{
	FUNC0(cred->key);
	cred->key = NULL;

	if (private_key_blob)
		return FUNC2(cred, private_key_blob,
				     private_key_blob_len,
				     private_key_passwd);

	if (private_key) {
		u8 *buf = NULL;
		size_t len = 0;
		int ret;

		if (buf == NULL) {
			FUNC3(MSG_INFO, "TLSv1: Failed to read '%s'",
				   private_key);
			return -1;
		}

		ret = FUNC2(cred, buf, len, private_key_passwd);
		FUNC1(buf);
		return ret;
	}

	return 0;
}