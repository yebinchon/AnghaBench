#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pem_password_cb ;
struct TYPE_6__ {char* password; } ;
struct TYPE_5__ {int /*<<< orphan*/  pkey; scalar_t__ private_key; } ;
typedef  TYPE_1__ K ;
typedef  TYPE_2__ CB_PARAM ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ PKeyPasswordCallbackFunction ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openssl_lock ; 

BIO *FUNC9(K *k, bool text, char *password)
{
	BIO *bio;
	// Validate arguments
	if (k == NULL)
	{
		return NULL;
	}

	bio = FUNC2();

	if (k->private_key)
	{
		// Secret key
		if (text == false)
		{
			// Binary format
			FUNC1(openssl_lock);
			{
				FUNC8(bio, k->pkey);
			}
			FUNC6(openssl_lock);
		}
		else
		{
			// Text format
			if (password == 0 || FUNC5(password) == 0)
			{
				// No encryption
				FUNC1(openssl_lock);
				{
					FUNC4(bio, k->pkey, NULL, NULL, 0, NULL, NULL);
				}
				FUNC6(openssl_lock);
			}
			else
			{
				// Encrypt
				CB_PARAM cb;
				cb.password = password;
				FUNC1(openssl_lock);
				{
					FUNC4(bio, k->pkey, FUNC0(),
						NULL, 0, (pem_password_cb *)PKeyPasswordCallbackFunction, &cb);
				}
				FUNC6(openssl_lock);
			}
		}
	}
	else
	{
		// Public key
		if (text == false)
		{
			// Binary format
			FUNC1(openssl_lock);
			{
				FUNC7(bio, k->pkey);
			}
			FUNC6(openssl_lock);
		}
		else
		{
			// Text format
			FUNC1(openssl_lock);
			{
				FUNC3(bio, k->pkey);
			}
			FUNC6(openssl_lock);
		}
	}

	return bio;
}