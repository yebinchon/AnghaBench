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
struct x509_certificate {struct x509_certificate* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x509_certificate*) ; 

void FUNC1(struct x509_certificate *cert)
{
	struct x509_certificate *next;

	while (cert) {
		next = cert->next;
		cert->next = NULL;
		FUNC0(cert);
		cert = next;
	}
}