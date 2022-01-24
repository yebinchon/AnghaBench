#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct SslClientCertInfo {char* PreverifyErrMessage; TYPE_1__* X; int /*<<< orphan*/  PreverifyErr; } ;
typedef  int /*<<< orphan*/  X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_6__ {int do_not_free; } ;
typedef  TYPE_1__ X ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  PREVERIFY_ERR_MESSAGE_SIZE ; 
 struct SslClientCertInfo* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(int preverify_ok, X509_STORE_CTX *ctx)
{
	SSL *ssl;
	struct SslClientCertInfo *clientcert;
	X509 *cert;

	ssl = FUNC10(ctx, FUNC5());
	clientcert = FUNC4(ssl, FUNC3());

	if (clientcert != NULL)
	{
		clientcert->PreverifyErr = FUNC9(ctx);
		clientcert->PreverifyErrMessage[0] = '\0';
		if (!preverify_ok)
		{
			const char *msg = FUNC11(clientcert->PreverifyErr);
			FUNC6(clientcert->PreverifyErrMessage, PREVERIFY_ERR_MESSAGE_SIZE, (char *)msg);
			FUNC1("SslCertVerifyCallback preverify error: '%s'\n", msg);
		}
		else
		{
			cert = FUNC8(ctx);
			if (cert != NULL)
			{
				X *tmpX = FUNC7(cert); // this only wraps cert, but we need to make a copy
				X *copyX = FUNC0(tmpX);
				tmpX->do_not_free = true; // do not release inner X509 object
				FUNC2(tmpX);
				clientcert->X = copyX;
			}
		}
	}

	return 1; /* allow the verification process to continue */
}