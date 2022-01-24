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
struct tlsv1_credentials {int /*<<< orphan*/  trusted_certs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(struct tlsv1_credentials *cred, const char *cert,
		      const u8 *cert_blob, size_t cert_blob_len,
		      const char *path)
{
	if (FUNC0(&cred->trusted_certs, cert,
				 cert_blob, cert_blob_len) < 0)
		return -1;

	if (path) {
		/* TODO: add support for reading number of certificate files */
		FUNC1(MSG_INFO, "TLSv1: Use of CA certificate directory "
			   "not yet supported");
		return -1;
	}

	return 0;
}