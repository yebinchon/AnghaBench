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
struct x509_certificate {int extensions_present; unsigned long path_len_constraint; int /*<<< orphan*/  subject; int /*<<< orphan*/  issuer; struct x509_certificate* next; scalar_t__ not_after; scalar_t__ not_before; } ;
struct os_time {scalar_t__ sec; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int X509_EXT_PATH_LEN_CONSTRAINT ; 
 int X509_VALIDATE_BAD_CERTIFICATE ; 
 int X509_VALIDATE_CERTIFICATE_EXPIRED ; 
 int X509_VALIDATE_CERTIFICATE_UNKNOWN ; 
 int X509_VALIDATE_OK ; 
 int X509_VALIDATE_UNKNOWN_CA ; 
 int /*<<< orphan*/  FUNC0 (struct os_time*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct x509_certificate*,struct x509_certificate*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (struct x509_certificate*) ; 

int FUNC6(struct x509_certificate *trusted,
				    struct x509_certificate *chain,
				    int *reason, int disable_time_checks)
{
	long unsigned idx;
	int chain_trusted = 0;
	struct x509_certificate *cert, *trust;
	char buf[128];
	struct os_time now;

	*reason = X509_VALIDATE_OK;

	FUNC1(MSG_DEBUG, "X509: Validate certificate chain");
	FUNC0(&now);

	for (cert = chain, idx = 0; cert; cert = cert->next, idx++) {
		FUNC4(&cert->subject, buf, sizeof(buf)); 
		FUNC1(MSG_DEBUG, "X509: %lu: %s", idx, buf);

		if (chain_trusted)
			continue;

		if (!disable_time_checks &&
		    ((unsigned long) now.sec <
		     (unsigned long) cert->not_before ||
		     (unsigned long) now.sec >
		     (unsigned long) cert->not_after)) {
			FUNC1(MSG_INFO, "X509: Certificate not valid "
				   "(now=%lu not_before=%lu not_after=%lu)",
				   now.sec, cert->not_before, cert->not_after);
			*reason = X509_VALIDATE_CERTIFICATE_EXPIRED;
			return -1;
		}

		if (cert->next) {
			if (FUNC3(&cert->issuer,
					      &cert->next->subject) != 0) {
				FUNC1(MSG_DEBUG, "X509: Certificate "
					   "chain issuer name mismatch");
				FUNC4(&cert->issuer, buf,
						 sizeof(buf)); 
				FUNC1(MSG_DEBUG, "X509: cert issuer: %s",
					   buf);
				FUNC4(&cert->next->subject, buf,
						 sizeof(buf)); 
				FUNC1(MSG_DEBUG, "X509: next cert "
					   "subject: %s", buf);
				*reason = X509_VALIDATE_CERTIFICATE_UNKNOWN;
				return -1;
			}

			if (FUNC5(cert->next) < 0) {
				*reason = X509_VALIDATE_BAD_CERTIFICATE;
				return -1;
			}

			if ((cert->next->extensions_present &
			     X509_EXT_PATH_LEN_CONSTRAINT) &&
			    idx > cert->next->path_len_constraint) {
				FUNC1(MSG_DEBUG, "X509: pathLenConstraint"
					   " not met (idx=%lu issuer "
					   "pathLenConstraint=%lu)", idx,
					   cert->next->path_len_constraint);
				*reason = X509_VALIDATE_BAD_CERTIFICATE;
				return -1;
			}

			if (FUNC2(cert->next, cert)
			    < 0) {
				FUNC1(MSG_DEBUG, "X509: Invalid "
					   "certificate signature within "
					   "chain");
				*reason = X509_VALIDATE_BAD_CERTIFICATE;
				return -1;
			}
		}

		for (trust = trusted; trust; trust = trust->next) {
			if (FUNC3(&cert->issuer, &trust->subject)
			    == 0)
				break;
		}

		if (trust) {
			FUNC1(MSG_DEBUG, "X509: Found issuer from the "
				   "list of trusted certificates");
			if (FUNC5(trust) < 0) {
				*reason = X509_VALIDATE_BAD_CERTIFICATE;
				return -1;
			}

			if (FUNC2(trust, cert) < 0)
			{
				FUNC1(MSG_DEBUG, "X509: Invalid "
					   "certificate signature");
				*reason = X509_VALIDATE_BAD_CERTIFICATE;
				return -1;
			}

			FUNC1(MSG_DEBUG, "X509: Trusted certificate "
				   "found to complete the chain");
			chain_trusted = 1;
		}
	}

	if (!chain_trusted) {
		FUNC1(MSG_DEBUG, "X509: Did not find any of the issuers "
			   "from the list of trusted certificates");
		if (trusted) {
			*reason = X509_VALIDATE_UNKNOWN_CA;
			return -1;
		}
		FUNC1(MSG_DEBUG, "X509: Certificate chain validation "
			   "disabled - ignore unknown CA issue");
	}

	FUNC1(MSG_DEBUG, "X509: Certificate chain valid");

	return 0;
}