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
struct secasvar {int flags; int alg_enc; TYPE_1__* key_enc; } ;
struct esp_algorithm {int keymin; int keymax; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  des_cblock ;
struct TYPE_2__ {int sadb_key_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
#define  SADB_EALG_3DESCBC 129 
#define  SADB_X_EALG_RIJNDAELCBC 128 
 int SADB_X_EXT_DERIV ; 
 int SADB_X_EXT_OLD ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct esp_algorithm* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct secasvar *sav)
{
	int keylen;
	const struct esp_algorithm *algo;

	if (sav->flags & SADB_X_EXT_OLD) {
		FUNC3((LOG_ERR,
		    "esp_cbc_mature: algorithm incompatible with esp-old\n"));
		return 1;
	}
	if (sav->flags & SADB_X_EXT_DERIV) {
		FUNC3((LOG_ERR,
		    "esp_cbc_mature: algorithm incompatible with derived\n"));
		return 1;
	}

	if (!sav->key_enc) {
		FUNC3((LOG_ERR, "esp_cbc_mature: no key is given.\n"));
		return 1;
	}

	algo = FUNC2(sav->alg_enc);
	if (!algo) {
		FUNC3((LOG_ERR,
		    "esp_cbc_mature: unsupported algorithm.\n"));
		return 1;
	}

	keylen = sav->key_enc->sadb_key_bits;
	if (keylen < algo->keymin || algo->keymax < keylen) {
		FUNC3((LOG_ERR,
		    "esp_cbc_mature %s: invalid key length %d.\n",
		    algo->name, sav->key_enc->sadb_key_bits));
		return 1;
	}
	switch (sav->alg_enc) {
	case SADB_EALG_3DESCBC:
		/* weak key check */
		if (FUNC1((des_cblock *)FUNC0(sav->key_enc)) ||
		    FUNC1((des_cblock *)(FUNC0(sav->key_enc) + 8)) ||
		    FUNC1((des_cblock *)(FUNC0(sav->key_enc) + 16))) {
			FUNC3((LOG_ERR,
			    "esp_cbc_mature %s: weak key was passed.\n",
			    algo->name));
			return 1;
		}
		break;
	case SADB_X_EALG_RIJNDAELCBC:
		/* allows specific key sizes only */
		if (!(keylen == 128 || keylen == 192 || keylen == 256)) {
			FUNC3((LOG_ERR,
			    "esp_cbc_mature %s: invalid key length %d.\n",
			    algo->name, keylen));
			return 1;
		}
		break;
	}

	return 0;
}