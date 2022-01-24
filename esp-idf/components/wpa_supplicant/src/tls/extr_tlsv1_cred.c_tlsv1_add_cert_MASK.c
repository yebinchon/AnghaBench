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
typedef  unsigned char u8 ;
struct x509_certificate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 unsigned char* FUNC0 (unsigned char const*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pem_cert_begin ; 
 int /*<<< orphan*/  pem_cert_end ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 scalar_t__ FUNC4 (struct x509_certificate**,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct x509_certificate **chain,
			  const u8 *buf, size_t len)
{
	const u8 *pos, *end;
	unsigned char *der;
	size_t der_len;

	pos = FUNC3(pem_cert_begin, buf, len);
	if (!pos) {
		FUNC5(MSG_DEBUG, "TLSv1: No PEM certificate tag found - "
			   "assume DER format");
		return FUNC4(chain, buf, len);
	}

	FUNC5(MSG_DEBUG, "TLSv1: Converting PEM format certificate into "
		   "DER format");

	while (pos) {
		pos += FUNC2(pem_cert_begin);
		end = FUNC3(pem_cert_end, pos, buf + len - pos);
		if (end == NULL) {
			FUNC5(MSG_INFO, "TLSv1: Could not find PEM "
				   "certificate end tag (%s)", pem_cert_end);
			return -1;
		}

		der = FUNC0(pos, end - pos, &der_len);
		if (der == NULL) {
			FUNC5(MSG_INFO, "TLSv1: Could not decode PEM "
				   "certificate");
			return -1;
		}

		if (FUNC4(chain, der, der_len) < 0) {
			FUNC5(MSG_INFO, "TLSv1: Failed to parse PEM "
				   "certificate after DER conversion");
			FUNC1(der);
			return -1;
		}

		FUNC1(der);

		end += FUNC2(pem_cert_end);
		pos = FUNC3(pem_cert_begin, end, buf + len - end);
	}

	return 0;
}