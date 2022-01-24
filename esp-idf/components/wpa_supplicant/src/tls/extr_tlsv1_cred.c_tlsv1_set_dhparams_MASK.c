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
struct tlsv1_credentials {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (struct tlsv1_credentials*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC3(struct tlsv1_credentials *cred, const char *dh_file,
		       const u8 *dh_blob, size_t dh_blob_len)
{
	if (dh_blob)
		return FUNC1(cred, dh_blob, dh_blob_len);

	if (dh_file) {
		u8 *buf = NULL;
		size_t len = 0;
		int ret;

		if (buf == NULL) {
			FUNC2(MSG_INFO, "TLSv1: Failed to read '%s'",
				   dh_file);
			return -1;
		}

		ret = FUNC1(cred, buf, len);
		FUNC0(buf);
		return ret;
	}

	return 0;
}