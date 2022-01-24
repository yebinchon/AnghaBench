#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int neighbors; int /*<<< orphan*/  rect; TYPE_8__** letters; } ;
typedef  TYPE_2__ ccv_textline_t ;
struct TYPE_17__ {double breakdown_ratio; } ;
typedef  TYPE_3__ ccv_swt_param_t ;
typedef  int /*<<< orphan*/  ccv_rect_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_18__ {int rnum; } ;
typedef  TYPE_4__ ccv_array_t ;
struct TYPE_15__ {scalar_t__ width; scalar_t__ x; } ;
struct TYPE_19__ {TYPE_1__ rect; } ;

/* Variables and functions */
 int CCV_32S ; 
 int CCV_C1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_8__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__**) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int) ; 
 TYPE_4__* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ *,double*,int) ; 
 double FUNC11 (double) ; 

__attribute__((used)) static ccv_array_t* FUNC12(ccv_array_t* textline, ccv_swt_param_t params)
{
	int i, j, n = 0;
	for (i = 0; i < textline->rnum; i++)
	{
		ccv_textline_t* t = (ccv_textline_t*)FUNC5(textline, i);
		if (t->neighbors - 1 > n)
			n = t->neighbors - 1;
	}
	FUNC3(n > 0);
	int* buffer = (int*)FUNC2(n * sizeof(int));
	ccv_array_t* words = FUNC6(sizeof(ccv_rect_t), textline->rnum, 0);
	for (i = 0; i < textline->rnum; i++)
	{
		ccv_textline_t* t = (ccv_textline_t*)FUNC5(textline, i);
		FUNC0(t->letters, t->neighbors, 0);
		int range = 0;
		double mean = 0;
		for (j = 0; j < t->neighbors - 1; j++)
		{
			buffer[j] = FUNC9(0, t->letters[j + 1]->rect.x - (t->letters[j]->rect.x + t->letters[j]->rect.width));
			if (buffer[j] >= range)
				range = buffer[j] + 1;
			mean += buffer[j];
		}
		ccv_dense_matrix_t otsu = FUNC8(1, t->neighbors - 1, CCV_32S | CCV_C1, buffer, 0);
		double var;
		int threshold = FUNC10(&otsu, &var, range);
		mean = mean / (t->neighbors - 1);
		if (FUNC11(var) > mean * params.breakdown_ratio)
		{
			ccv_textline_t nt = { .neighbors = 0, .letters = 0 };
			FUNC1(&nt, t->letters[0]);
			for (j = 0; j < t->neighbors - 1; j++)
			{
				if (buffer[j] > threshold)
				{
					FUNC7(words, &nt.rect);
					if (nt.letters)
						FUNC4(nt.letters);
					nt.letters = 0;
					nt.neighbors = 0;
				}
				FUNC1(&nt, t->letters[j + 1]);
			}
			FUNC7(words, &nt.rect);
			if (nt.letters)
				FUNC4(nt.letters);
		} else {
			FUNC7(words, &(t->rect));
		}
	}
	return words;
}