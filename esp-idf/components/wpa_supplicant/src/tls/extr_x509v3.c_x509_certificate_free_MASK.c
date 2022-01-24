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
struct x509_certificate {struct x509_certificate* sign_value; struct x509_certificate* public_key; int /*<<< orphan*/  subject; int /*<<< orphan*/  issuer; scalar_t__ next; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct x509_certificate*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct x509_certificate*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct x509_certificate *cert)
{
	if (cert == NULL)
		return;
	if (cert->next) {
		FUNC1(MSG_DEBUG, "X509: x509_certificate_free: cer=%p "
			   "was still on a list (next=%p)\n",
			   cert, cert->next);
	}
	FUNC2(&cert->issuer);
	FUNC2(&cert->subject);
	FUNC0(cert->public_key);
	FUNC0(cert->sign_value);
	FUNC0(cert);
}