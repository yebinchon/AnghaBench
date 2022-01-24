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
struct x509_certificate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (struct x509_certificate**,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC3(struct x509_certificate **chain,
				const char *cert, const u8 *cert_blob,
				size_t cert_blob_len)
{
	if (cert_blob)
		return FUNC1(chain, cert_blob, cert_blob_len);

	if (cert) {
		u8 *buf = NULL;
		size_t len = 0;
		int ret;

		if (buf == NULL) {
			FUNC2(MSG_INFO, "TLSv1: Failed to read '%s'",
				   cert);
			return -1;
		}

		ret = FUNC1(chain, buf, len);
		FUNC0(buf);
		return ret;
	}

	return 0;
}