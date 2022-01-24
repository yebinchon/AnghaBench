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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct ccdigest_info {int dummy; } ;

/* Variables and functions */
 int CCSHA256_OUTPUT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccdigest_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccdigest_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ccdigest_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ccdigest_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ccdigest_info const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct ccdigest_info ccsha256_ltc_di ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static size_t
FUNC8(void * buf, size_t nwords)
{
	size_t i;
	uint64_t w;
	uint8_t hash[CCSHA256_OUTPUT_SIZE];
	const struct ccdigest_info * di = &ccsha256_ltc_di;

	FUNC2(di, ctx);
	FUNC4(di, ctx);

	for (i = 0; i < 1023; i += 1) {
		if (!FUNC7(&w, 10)) {
			nwords = 0;
			goto out;
		}
		FUNC5(di, ctx, sizeof w, &w);
	}

	FUNC3(di, ctx, hash);

	if (nwords > 2) {
		nwords = 2;
	}

	FUNC6(buf, hash, nwords * sizeof(uint64_t));

out:
	FUNC1(di, ctx);
	FUNC0(hash, sizeof hash);
	FUNC0(&w, sizeof w);

	return nwords;
}