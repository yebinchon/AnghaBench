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
typedef  unsigned char HMAC_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  A1 ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 

void FUNC9(const EVP_MD *md, const unsigned char *sec, int sec_len,
				 const unsigned char *seed, int seed_len, unsigned char *out, int olen)
{
	int chunk,n;
	unsigned int j;
	HMAC_CTX *ctx;
	HMAC_CTX *ctx_tmp;
	unsigned char A1[EVP_MAX_MD_SIZE];
	unsigned int A1_len;

#if OPENSSL_VERSION_NUMBER >= 0x10100000L
	ctx = HMAC_CTX_new();
	ctx_tmp = HMAC_CTX_new();
#else
	HMAC_CTX ctx_;
	HMAC_CTX ctx_tmp_;
	ctx = &ctx_;
	ctx_tmp = &ctx_tmp_;
	FUNC7(ctx, sizeof(HMAC_CTX));
	FUNC7(ctx_tmp, sizeof(HMAC_CTX));
#endif
	chunk=FUNC0(md);

	FUNC5(ctx,sec,sec_len,md, NULL);
	FUNC5(ctx_tmp,sec,sec_len,md, NULL);
	FUNC6(ctx,seed,seed_len);
	FUNC4(ctx,A1,&A1_len);

	n=0;
	for (;;)
	{
		FUNC5(ctx,NULL,0,NULL,NULL); /* re-init */
		FUNC5(ctx_tmp,NULL,0,NULL,NULL); /* re-init */
		FUNC6(ctx,A1,A1_len);
		FUNC6(ctx_tmp,A1,A1_len);
		FUNC6(ctx,seed,seed_len);

		if (olen > chunk)
		{
			FUNC4(ctx,out,&j);
			out+=j;
			olen-=j;
			FUNC4(ctx_tmp,A1,&A1_len); /* calc the next A1 value */
		}
		else	/* last one */
		{
			FUNC4(ctx,A1,&A1_len);
			FUNC8(out,A1,olen);
			break;
		}
	}
#if OPENSSL_VERSION_NUMBER >= 0x10100000L
	HMAC_CTX_free(ctx);
	HMAC_CTX_free(ctx_tmp);
#else
	FUNC1(ctx);
	FUNC1(ctx_tmp);
#endif
	FUNC7 (A1, sizeof(A1));
}