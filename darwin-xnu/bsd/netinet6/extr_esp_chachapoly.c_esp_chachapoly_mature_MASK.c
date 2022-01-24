#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct secasvar {int flags; scalar_t__ alg_enc; TYPE_3__* sah; int /*<<< orphan*/  spi; TYPE_1__* key_enc; } ;
struct esp_algorithm {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {TYPE_2__ saidx; int /*<<< orphan*/  state; int /*<<< orphan*/  dir; int /*<<< orphan*/ * ipsec_if; } ;
struct TYPE_4__ {scalar_t__ sadb_key_bits; } ;

/* Variables and functions */
 scalar_t__ ESP_CHACHAPOLY_KEYBITS_WITH_SALT ; 
 int /*<<< orphan*/  FUNC0 (struct secasvar*) ; 
 scalar_t__ SADB_X_EALG_CHACHA20POLY1305 ; 
 int SADB_X_EXT_DERIV ; 
 int SADB_X_EXT_IIV ; 
 int SADB_X_EXT_OLD ; 
 struct esp_algorithm* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct secasvar *sav)
{
	const struct esp_algorithm *algo;

	FUNC0(sav);

	if ((sav->flags & SADB_X_EXT_OLD) != 0) {
		FUNC3("ChaChaPoly is incompatible with SADB_X_EXT_OLD, SPI 0x%08x",
					FUNC5(sav->spi));
		return 1;
	}
	if ((sav->flags & SADB_X_EXT_DERIV) != 0) {
		FUNC3("ChaChaPoly is incompatible with SADB_X_EXT_DERIV, SPI 0x%08x",
					FUNC5(sav->spi));
		return 1;
	}

	if (sav->alg_enc != SADB_X_EALG_CHACHA20POLY1305) {
		FUNC3("ChaChaPoly unsupported algorithm %d, SPI 0x%08x",
					sav->alg_enc, FUNC5(sav->spi));
		return 1;
	}

	if (sav->key_enc == NULL) {
		FUNC3("ChaChaPoly key is missing, SPI 0x%08x",
					FUNC5(sav->spi));
		return 1;
	}

	algo = FUNC1(sav->alg_enc);
	if (algo == NULL) {
		FUNC3("ChaChaPoly lookup failed for algorithm %d, SPI 0x%08x",
					sav->alg_enc, FUNC5(sav->spi));
		return 1;
	}

	if (sav->key_enc->sadb_key_bits != ESP_CHACHAPOLY_KEYBITS_WITH_SALT) {
		FUNC3("ChaChaPoly invalid key length %d bits, SPI 0x%08x",
					sav->key_enc->sadb_key_bits, FUNC5(sav->spi));
		return 1;
	}

	FUNC2("ChaChaPoly Mature SPI 0x%08x%s %s dir %u state %u mode %u",
					FUNC5(sav->spi),
					(((sav->flags & SADB_X_EXT_IIV) != 0) ? " IIV" : ""),
					((sav->sah->ipsec_if != NULL) ? FUNC4(sav->sah->ipsec_if) : "NONE"),
					sav->sah->dir, sav->sah->state, sav->sah->saidx.mode);

	return 0;
}