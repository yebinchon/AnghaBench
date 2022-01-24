#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  errorbio; int /*<<< orphan*/  ca; int /*<<< orphan*/  pkey; int /*<<< orphan*/  usercert; } ;
typedef  TYPE_1__ sslctxparm ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_SSL_CERTPROBLEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_MODE_AUTO_RETRY ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZERO_NULL ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ssl_app_verify_callback ; 

__attribute__((used)) static CURLcode FUNC15(CURL *curl, void *sslctx, void *parm)
{
  sslctxparm *p = (sslctxparm *) parm;
  SSL_CTX *ctx = (SSL_CTX *) sslctx;

  if(!FUNC11(ctx, p->usercert)) {
    FUNC0(p->errorbio, "SSL_CTX_use_certificate problem\n");
    goto err;
  }
  if(!FUNC10(ctx, p->pkey)) {
    FUNC0(p->errorbio, "SSL_CTX_use_PrivateKey\n");
    goto err;
  }

  if(!FUNC2(ctx)) {
    FUNC0(p->errorbio, "SSL_CTX_check_private_key\n");
    goto err;
  }

  FUNC7(ctx, 1);
  FUNC5(ctx, "RC4-MD5");
  FUNC6(ctx, SSL_MODE_AUTO_RETRY);

  FUNC12(FUNC3(ctx),
                      FUNC14(p->ca, FUNC13(p->ca)-1));

  FUNC9(ctx, 2);
  FUNC8(ctx, SSL_VERIFY_PEER, ZERO_NULL);
  FUNC4(ctx, ssl_app_verify_callback, parm);

  return CURLE_OK;
  err:
  FUNC1(p->errorbio);
  return CURLE_SSL_CERTPROBLEM;

}