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
struct secasvar {int flags; int /*<<< orphan*/  key_enc; int /*<<< orphan*/  alg_enc; } ;
struct esp_algorithm {scalar_t__ keymin; scalar_t__ keymax; } ;
typedef  int /*<<< orphan*/  des_cblock ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int SADB_X_EXT_IV4B ; 
 int SADB_X_EXT_OLD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct esp_algorithm* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct secasvar *sav)
{
	const struct esp_algorithm *algo;

	if (!(sav->flags & SADB_X_EXT_OLD) && (sav->flags & SADB_X_EXT_IV4B)) {
		FUNC4((LOG_ERR, "esp_cbc_mature: "
		    "algorithm incompatible with 4 octets IV length\n"));
		return 1;
	}

	if (!sav->key_enc) {
		FUNC4((LOG_ERR, "esp_descbc_mature: no key is given.\n"));
		return 1;
	}

	algo = FUNC3(sav->alg_enc);
	if (!algo) {
		FUNC4((LOG_ERR,
		    "esp_descbc_mature: unsupported algorithm.\n"));
		return 1;
	}

	if (FUNC0(sav->key_enc) < algo->keymin ||
	    FUNC0(sav->key_enc) > algo->keymax) {
		FUNC4((LOG_ERR,
		    "esp_descbc_mature: invalid key length %d.\n",
		    FUNC0(sav->key_enc)));
		return 1;
	}

	/* weak key check */
	if (FUNC2((des_cblock *)FUNC1(sav->key_enc))) {
		FUNC4((LOG_ERR,
		    "esp_descbc_mature: weak key was passed.\n"));
		return 1;
	}

	return 0;
}