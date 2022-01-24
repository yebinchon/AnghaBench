#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pem_password_cb ;
struct TYPE_8__ {char* password; } ;
struct TYPE_7__ {int private_key; int /*<<< orphan*/ * pkey; } ;
typedef  TYPE_1__ K ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_2__ CB_PARAM ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ PKeyPasswordCallbackFunction ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  openssl_lock ; 

K *FUNC8(BIO *bio, bool private_key, bool text, char *password)
{
	EVP_PKEY *pkey;
	K *k;
	// Validate arguments
	if (bio == NULL)
	{
		return NULL;
	}

	if (password != NULL && FUNC3(password) == 0)
	{
		password = NULL;
	}

	if (private_key == false)
	{
		// Public key
		if (text == false)
		{
			// Binary format
			pkey = FUNC6(bio, NULL);
			if (pkey == NULL)
			{
				return NULL;
			}
		}
		else
		{
			// Text format
			CB_PARAM cb;
			cb.password = password;
			FUNC0(openssl_lock);
			{
				pkey = FUNC1(bio, NULL, (pem_password_cb *)PKeyPasswordCallbackFunction, &cb);
			}
			FUNC4(openssl_lock);
			if (pkey == NULL)
			{
				return NULL;
			}
		}
	}
	else
	{
		if (text == false)
		{
			// Binary format
			FUNC0(openssl_lock);
			{
				pkey = FUNC7(bio, NULL);
			}
			FUNC4(openssl_lock);
			if (pkey == NULL)
			{
				return NULL;
			}
		}
		else
		{
			// Text format
			CB_PARAM cb;
			cb.password = password;
			FUNC0(openssl_lock);
			{
				pkey = FUNC2(bio, NULL, (pem_password_cb *)PKeyPasswordCallbackFunction, &cb);
			}
			FUNC4(openssl_lock);
			if (pkey == NULL)
			{
				return NULL;
			}
		}
	}

	k = FUNC5(sizeof(K));
	k->pkey = pkey;
	k->private_key = private_key;

	return k;
}