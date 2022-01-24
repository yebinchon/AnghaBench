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
struct wpabuf {int dummy; } ;
struct dh_group {size_t prime_len; int /*<<< orphan*/  prime; int /*<<< orphan*/  generator_len; int /*<<< orphan*/  generator; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 scalar_t__* FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,size_t) ; 

struct wpabuf * 
FUNC13(const struct dh_group *dh, struct wpabuf **priv)
{
	struct wpabuf *pv;
	size_t pv_len;

	if (dh == NULL)
		return NULL;

	FUNC7(*priv);
	*priv = FUNC6(dh->prime_len);
	if (*priv == NULL)
		return NULL;

	if (FUNC2(FUNC12(*priv, dh->prime_len), dh->prime_len))
	{
		FUNC7(*priv);
		*priv = NULL;
		return NULL;
	}

	if (FUNC1(FUNC8(*priv), dh->prime, dh->prime_len) > 0) {
		/* Make sure private value is smaller than prime */
		*(FUNC11(*priv)) = 0;
	}
	FUNC4(MSG_DEBUG, "DH: private value", *priv);

	pv_len = dh->prime_len;
	pv = FUNC6(pv_len);
	if (pv == NULL)
		return NULL;

	if (FUNC0(dh->generator, dh->generator_len,
						FUNC8(*priv), FUNC9(*priv),
						dh->prime, dh->prime_len, FUNC10(pv),
						&pv_len)) {
		FUNC7(pv);
		FUNC5(MSG_INFO, "DH: crypto_mod_exp failed");
		return NULL;
	}
	FUNC12(pv, pv_len);
	FUNC3(MSG_DEBUG, "DH: public value", pv);

	return pv;
}