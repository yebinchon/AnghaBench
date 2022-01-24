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
struct secasvar {TYPE_1__* key_auth; int /*<<< orphan*/  alg_auth; } ;
struct ah_algorithm {scalar_t__ keymin; scalar_t__ keymax; } ;
struct TYPE_2__ {scalar_t__ sadb_key_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 struct ah_algorithm* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct secasvar *sav)
{
	const struct ah_algorithm *algo;

	if (!sav->key_auth) {
		FUNC1((LOG_ERR, "ah_keyed_sha1_mature: no key is given.\n"));
		return 1;
	}

	algo = FUNC0(sav->alg_auth);
	if (!algo) {
		FUNC1((LOG_ERR, "ah_keyed_sha1_mature: unsupported algorithm.\n"));
		return 1;
	}

	if (sav->key_auth->sadb_key_bits < algo->keymin
	 || algo->keymax < sav->key_auth->sadb_key_bits) {
		FUNC1((LOG_ERR,
		    "ah_keyed_sha1_mature: invalid key length %d.\n",
		    sav->key_auth->sadb_key_bits));
		return 1;
	}

	return 0;
}