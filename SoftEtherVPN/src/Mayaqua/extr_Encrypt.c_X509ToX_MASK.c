#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_25__ {int root_cert; int has_basic_constraints; int bits; int is_compatible_bit; int /*<<< orphan*/ * serial; int /*<<< orphan*/  issuer_url; int /*<<< orphan*/  subject_name; int /*<<< orphan*/  issuer_name; int /*<<< orphan*/ * x509; } ;
typedef  TYPE_3__ X ;
typedef  scalar_t__ UINT ;
struct TYPE_29__ {TYPE_2__* location; int /*<<< orphan*/  method; } ;
struct TYPE_28__ {char* data; int length; } ;
struct TYPE_27__ {scalar_t__ Size; } ;
struct TYPE_26__ {int /*<<< orphan*/  pkey; } ;
struct TYPE_23__ {int /*<<< orphan*/  uniformResourceIdentifier; } ;
struct TYPE_24__ {scalar_t__ type; TYPE_1__ d; } ;
typedef  TYPE_4__ K ;
typedef  TYPE_5__ BUF ;
typedef  int /*<<< orphan*/  AUTHORITY_INFO_ACCESS ;
typedef  TYPE_6__ ASN1_INTEGER ;
typedef  TYPE_7__ ACCESS_DESCRIPTION ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EVP_PKEY_RSA ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ GEN_URI ; 
 TYPE_4__* FUNC10 (TYPE_3__*) ; 
 int FUNC11 (char*) ; 
 TYPE_5__* FUNC12 (TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 scalar_t__ NID_ad_ca_issuers ; 
 int /*<<< orphan*/  NID_basic_constraints ; 
 int /*<<< orphan*/  NID_info_access ; 
 void* FUNC15 (char*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC20 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC21 (int) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC23 (int /*<<< orphan*/ *,int) ; 

X *FUNC24(X509 *x509)
{
	X *x;
	K *k;
	BUF *b;
	UINT size;
	UINT type;
	ASN1_INTEGER *s;
	// Validate arguments
	if (x509 == NULL)
	{
		return NULL;
	}

	x = FUNC21(sizeof(X));
	x->x509 = x509;

	// Name
	FUNC14(x);

	// Expiration date
	FUNC13(x);

	// Check whether it is a root certificate
	if (FUNC4(x->issuer_name, x->subject_name))
	{
		K *pubkey = FUNC10(x);
		if (pubkey != NULL)
		{
			if (FUNC3(x, pubkey))
			{
				x->root_cert = true;
			}
			FUNC8(pubkey);
		}
	}

	// Check whether there is basic constraints
	if (FUNC18(x509, NID_basic_constraints, -1) != -1)
	{
		x->has_basic_constraints = true;
	}

	// Get the "Certification Authority Issuer" (1.3.6.1.5.5.7.48.2) field value
	if (x->root_cert == false)
	{
		AUTHORITY_INFO_ACCESS *ads = (AUTHORITY_INFO_ACCESS *)FUNC19(x509, NID_info_access, NULL, NULL);

		if (ads != NULL)
		{
			int i;

			for (i = 0; i < FUNC22(ads); i++)
			{
				ACCESS_DESCRIPTION *ad = FUNC23(ads, i);
				if (ad != NULL)
				{
					if (FUNC16(ad->method) == NID_ad_ca_issuers && ad->location->type == GEN_URI)
					{
#if OPENSSL_VERSION_NUMBER >= 0x10100000L
						char *uri = (char *)ASN1_STRING_get0_data(ad->location->d.uniformResourceIdentifier);
#else
						char *uri = (char *)FUNC0(ad->location->d.uniformResourceIdentifier);
#endif
						if (FUNC11(uri) == false)
						{
							FUNC17(x->issuer_url, sizeof(x->issuer_url), uri);
							break;
						}
					}
				}
			}

			FUNC2(ads);
		}
	}

	// Get the Serial Number
	s = FUNC20(x509);
	x->serial = FUNC15(s->data, s->length);
	if (x->serial == NULL)
	{
		char zero = 0;
		x->serial = FUNC15(&zero, sizeof(char));
	}

	k = FUNC10(x);
	if (k == NULL)
	{
		FUNC9(x);
		return NULL;
	}

	b = FUNC12(k, false, NULL);

	size = b->Size;
	type = FUNC5(k->pkey);

	FUNC7(b);
	
	//Fixed to get actual RSA key bits
	x->bits = FUNC6(k->pkey);
	
	FUNC8(k);

	if (type == EVP_PKEY_RSA)
	{
		x->is_compatible_bit = true;

		if(x->bits != 1024 && x->bits != 1536 && x->bits != 2048 && x->bits != 3072 && x->bits != 4096)
		{
			x->is_compatible_bit = false;
		}
		else
		{
			x->is_compatible_bit = true;
		}
		
		/*switch (size)
		{
		case 162:
			x->bits = 1024;
			break;

		case 226:
			x->bits = 1536;
			break;

		case 294:
			x->bits = 2048;
			break;

		case 442:
			x->bits = 3072;
			break;

		case 550:
			x->bits = 4096;
			break;

		default:
			x->is_compatible_bit = false;
			break;
		}*/
	}

	return x;
}