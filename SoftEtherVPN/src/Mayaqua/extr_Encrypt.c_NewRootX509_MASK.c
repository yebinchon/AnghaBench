#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int size; char* data; } ;
typedef  TYPE_1__ X_SERIAL ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int length; void* data; } ;
struct TYPE_9__ {int private_key; int /*<<< orphan*/  pkey; } ;
typedef  int /*<<< orphan*/  NAME ;
typedef  TYPE_2__ K ;
typedef  int /*<<< orphan*/  ASN1_TIME ;
typedef  TYPE_3__ ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_basic_constraints ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openssl_lock ; 

X509 *FUNC25(K *pub, K *priv, NAME *name, UINT days, X_SERIAL *serial)
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
	if (pub == NULL || name == NULL || priv == NULL)
	{
		return NULL;
	}
	if (days == 0)
	{
		days = 365;
	}
	if (priv->private_key == false)
	{
		return NULL;
	}
	if (pub->private_key != false)
	{
		return NULL;
	}

	notBefore = FUNC10();
	notAfter = notBefore + (UINT64)days * (UINT64)3600 * (UINT64)24 * (UINT64)1000;

	// Creating a X509
	x509 = FUNC19();
	if (x509 == NULL)
	{
		return NULL;
	}

	// Make it a v3 certificate
	FUNC23(x509, 2L);

	// Set the Expiration
	t1 = FUNC17(x509);
	t2 = FUNC16(x509);
	if (!FUNC11((void *)t1, notBefore))
	{
		FUNC2(x509);
		return NULL;
	}
	if (!FUNC11((void *)t2, notAfter))
	{
		FUNC2(x509);
		return NULL;
	}

	// Set the name
	subject_name = FUNC5(name);
	if (subject_name == NULL)
	{
		FUNC2(x509);
		return NULL;
	}
	issuer_name = FUNC5(name);
	if (issuer_name == NULL)
	{
		FUNC3(subject_name);
		FUNC2(x509);
		return NULL;
	}

	FUNC20(x509, issuer_name);
	FUNC22(x509, subject_name);

	FUNC3(subject_name);
	FUNC3(issuer_name);

	// Set a Serial Number
	s = FUNC18(x509);
	FUNC8(s->data);
	if (serial == NULL)
	{
		char zero = 0;
		s->data = FUNC9(sizeof(char));
		FUNC0(s->data, &zero, sizeof(char));
		s->length = sizeof(char);
	}
	else
	{
		s->data = FUNC9(serial->size);
		FUNC0(s->data, serial->data, serial->size);
		s->length = serial->size;
	}

	// Extensions
	ex = FUNC13(NULL, NULL, NID_basic_constraints,	"critical,CA:TRUE");
	FUNC15(x509, ex, -1);
	FUNC14(ex);

	// Basic usage
	busage = FUNC6();
	if (busage != NULL)
	{
		FUNC15(x509, busage, -1);
		FUNC14(busage);
	}

	// EKU
	eku = FUNC7();
	if (eku != NULL)
	{
		FUNC15(x509, eku, -1);
		FUNC14(eku);
	}

	FUNC4(openssl_lock);
	{
		// Set the public key
		FUNC21(x509, pub->pkey);

		// Signature
		// 2014.3.19 set the initial digest algorithm to SHA-256
		FUNC24(x509, priv->pkey, FUNC1());
	}
	FUNC12(openssl_lock);

	return x509;
}