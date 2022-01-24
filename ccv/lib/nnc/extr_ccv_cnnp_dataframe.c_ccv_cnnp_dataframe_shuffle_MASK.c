#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int row_count; int* shuffled_idx; int /*<<< orphan*/  sfmt; scalar_t__ rng; } ;
typedef  TYPE_1__ ccv_cnnp_dataframe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gsl_rng_default ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(ccv_cnnp_dataframe_t* const dataframe)
{
	FUNC0(dataframe->row_count);
	int i;
	if (!dataframe->shuffled_idx)
	{
		dataframe->shuffled_idx = (int*)FUNC1(sizeof(int) * dataframe->row_count);
		for (i = 0; i < dataframe->row_count; i++)
			dataframe->shuffled_idx[i] = i;
#ifdef HAVE_GSL
		assert(!dataframe->rng);
		gsl_rng_env_setup();
		dataframe->rng = gsl_rng_alloc(gsl_rng_default);
		gsl_rng_set(dataframe->rng, (unsigned long int)dataframe);
#else
		FUNC7(&dataframe->sfmt, (uint32_t)dataframe);
#endif
	}
#ifdef HAVE_GSL
	gsl_ran_shuffle(dataframe->rng, dataframe->shuffled_idx, dataframe->row_count, sizeof(int));
#else
	FUNC6(&dataframe->sfmt, dataframe->shuffled_idx, dataframe->row_count, sizeof(int));
#endif
}