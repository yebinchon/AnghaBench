#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  alt_dns ;
struct TYPE_13__ {int size; char* data; } ;
typedef  TYPE_1__ X_SERIAL ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_14__ {int /*<<< orphan*/  x509; } ;
typedef  TYPE_2__ X ;
typedef  int UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_17__ {int length; void* data; } ;
struct TYPE_16__ {int private_key; int /*<<< orphan*/  pkey; } ;
struct TYPE_15__ {int /*<<< orphan*/  CommonName; } ;
typedef  TYPE_3__ NAME ;
typedef  TYPE_4__ K ;
typedef  int /*<<< orphan*/  ASN1_TIME ;
typedef  TYPE_5__ ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  NID_subject_alt_name ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (int) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (void*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openssl_lock ; 

X509 *FUNC28(K *pub, K *priv, X *ca, NAME *name, UINT days, X_SERIAL *serial)
{
	X509 *x509;
	UINT64 notBefore, notAfter;
	const ASN1_TIME *t1, *t2;
	X509_NAME *subject_name, *issuer_name;
	X509_EXTENSION *ex = NULL;
	X509_EXTENSION *eku = NULL;
	X509_EXTENSION *busage = NULL;
	ASN1_INTEGER *s;
	// Validate arguments
	if (pub == NULL || name == NULL || ca == NULL)
	{
		return NULL;
	}
	if (pub->private_key != false)
	{
		return NULL;
	}
	if (priv->private_key == false)
	{
		return NULL;
	}

	notBefore = FUNC11();
	notAfter = notBefore + (UINT64)days * (UINT64)3600 * (UINT64)24 * (UINT64)1000;

	// Creating a X509
	x509 = FUNC22();
	if (x509 == NULL)
	{
		return NULL;
	}

	// Make it a v3 certificate
	FUNC26(x509, 2L);

	// Set the Expiration
	t1 = FUNC19(x509);
	t2 = FUNC18(x509);
	if (!FUNC12((void *)t1, notBefore))
	{
		FUNC3(x509);
		return NULL;
	}
	if (!FUNC12((void *)t2, notAfter))
	{
		FUNC3(x509);
		return NULL;
	}

	// Set the name
	subject_name = FUNC6(name);
	if (subject_name == NULL)
	{
		FUNC3(x509);
		return NULL;
	}
	issuer_name = FUNC21(ca->x509);
	if (issuer_name == NULL)
	{
		FUNC4(subject_name);
		FUNC3(x509);
		return NULL;
	}

	FUNC23(x509, issuer_name);
	FUNC25(x509, subject_name);

	FUNC4(subject_name);

	// Set the Serial Number
	s = FUNC20(x509);
	FUNC9(s->data);
	if (serial == NULL)
	{
		char zero = 0;
		s->data = FUNC10(sizeof(char));
		FUNC0(s->data, &zero, sizeof(char));
		s->length = sizeof(char);
	}
	else
	{
		s->data = FUNC10(serial->size);
		FUNC0(s->data, serial->data, serial->size);
		s->length = serial->size;
	}

	/*
	// Extensions
	ex = X509V3_EXT_conf_nid(NULL, NULL, NID_basic_constraints,	"critical,CA:TRUE");
	X509_add_ext(x509, ex, -1);
	X509_EXTENSION_free(ex);
*/

	// Basic usage
	busage = FUNC7();
	if (busage != NULL)
	{
		FUNC17(x509, busage, -1);
		FUNC16(busage);
	}

	// EKU
	eku = FUNC8();
	if (eku != NULL)
	{
		FUNC17(x509, eku, -1);
		FUNC16(eku);
	}

	// Alternative subject name
	if (FUNC13(name->CommonName) == false)
	{
		char alt_dns[MAX_PATH];

		FUNC2(alt_dns, sizeof(alt_dns), "DNS.1:%S", name->CommonName);

		ex = FUNC15(NULL, NULL, NID_subject_alt_name,	alt_dns);
		FUNC17(x509, ex, -1);
		FUNC16(ex);
	}

	FUNC5(openssl_lock);
	{
		// Set the public key
		FUNC24(x509, pub->pkey);

		// Signature
		// 2014.3.19 set the initial digest algorithm to SHA-256
		FUNC27(x509, priv->pkey, FUNC1());
	}
	FUNC14(openssl_lock);

	return x509;
}