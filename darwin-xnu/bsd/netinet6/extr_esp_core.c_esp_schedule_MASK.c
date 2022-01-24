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
struct secasvar {scalar_t__ schedlen; int flags; scalar_t__ alg_enc; int /*<<< orphan*/ * sched; int /*<<< orphan*/  key_enc; } ;
struct esp_algorithm {scalar_t__ keymin; scalar_t__ keymax; int (* schedule ) (struct esp_algorithm const*,struct secasvar*) ;scalar_t__ (* schedlen ) (struct esp_algorithm const*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  M_DONTWAIT ; 
 int /*<<< orphan*/  M_SECA ; 
 scalar_t__ SADB_X_EALG_AES_GCM ; 
 scalar_t__ SADB_X_EALG_CHACHA20POLY1305 ; 
 int SADB_X_EXT_IIV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sadb_mutex ; 
 scalar_t__ FUNC7 (struct esp_algorithm const*) ; 
 int FUNC8 (struct esp_algorithm const*,struct secasvar*) ; 

int
FUNC9(const struct esp_algorithm *algo, struct secasvar *sav)
{
	int error;

	/* check for key length */
	if (FUNC1(sav->key_enc) < algo->keymin ||
	    FUNC1(sav->key_enc) > algo->keymax) {
		FUNC4((LOG_ERR,
		    "esp_schedule %s: unsupported key length %d: "
		    "needs %d to %d bits\n", algo->name, FUNC1(sav->key_enc),
		    algo->keymin, algo->keymax));
		return EINVAL;
	}

	FUNC5(sadb_mutex);
	/* already allocated */
	if (sav->sched && sav->schedlen != 0) {
		FUNC6(sadb_mutex);
		return 0;
	}

	/* prevent disallowed implicit IV */
	if (((sav->flags & SADB_X_EXT_IIV) != 0) &&
		(sav->alg_enc != SADB_X_EALG_AES_GCM) &&
		(sav->alg_enc != SADB_X_EALG_CHACHA20POLY1305)) {
		FUNC4((LOG_ERR,
		    "esp_schedule %s: implicit IV not allowed\n",
			algo->name));
		FUNC6(sadb_mutex);
		return EINVAL;
	}

	/* no schedule necessary */
	if (!algo->schedule || !algo->schedlen) {
		FUNC6(sadb_mutex);
		return 0;
	}
        
	sav->schedlen = (*algo->schedlen)(algo);
	if ((signed) sav->schedlen < 0) {
		FUNC6(sadb_mutex);
		return EINVAL;
	}

//#### that malloc should be replaced by a saved buffer...
	sav->sched = FUNC2(sav->schedlen, M_SECA, M_DONTWAIT);
	if (!sav->sched) {
		sav->schedlen = 0;
		FUNC6(sadb_mutex);
		return ENOBUFS;
	}

	error = (*algo->schedule)(algo, sav);
	if (error) {
		FUNC4((LOG_ERR, "esp_schedule %s: error %d\n",
		    algo->name, error));
		FUNC3(sav->sched, sav->schedlen);
		FUNC0(sav->sched, M_SECA);
		sav->sched = NULL;
		sav->schedlen = 0;
	}
	FUNC6(sadb_mutex);
	return error;
}