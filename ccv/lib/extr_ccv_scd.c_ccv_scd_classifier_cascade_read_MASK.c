#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  feature_params_qs ;
typedef  int /*<<< orphan*/  classifier_params_qs ;
struct TYPE_5__ {int* sx; int* sy; int* dx; int* dy; float bias; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ ccv_scd_stump_feature_t ;
struct TYPE_6__ {int count; float threshold; TYPE_1__* features; } ;
typedef  TYPE_2__ ccv_scd_stump_classifier_t ;
struct TYPE_7__ {int count; TYPE_2__* classifiers; int /*<<< orphan*/  size; int /*<<< orphan*/  margin; } ;
typedef  TYPE_3__ ccv_scd_classifier_cascade_t ;
typedef  int /*<<< orphan*/  cascade_params_qs ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

ccv_scd_classifier_cascade_t* FUNC15(const char* filename)
{
	int i;
	sqlite3* db = 0;
	ccv_scd_classifier_cascade_t* cascade = 0;
	if (SQLITE_OK == FUNC12(filename, &db))
	{
		const char cascade_params_qs[] =
			"SELECT count, " // 1
			"margin_left, margin_top, margin_right, margin_bottom, " // 5
			"size_width, size_height FROM cascade_params WHERE id = 0;"; // 7
		sqlite3_stmt* cascade_params_stmt = 0;
		if (SQLITE_OK == FUNC13(db, cascade_params_qs, sizeof(cascade_params_qs), &cascade_params_stmt, 0))
		{
			if (FUNC14(cascade_params_stmt) == SQLITE_ROW)
			{
				cascade = (ccv_scd_classifier_cascade_t*)FUNC2(sizeof(ccv_scd_classifier_cascade_t));
				cascade->count = FUNC10(cascade_params_stmt, 0);
				cascade->classifiers = (ccv_scd_stump_classifier_t*)FUNC1(cascade->count, sizeof(ccv_scd_stump_classifier_t));
				cascade->margin = FUNC3(FUNC10(cascade_params_stmt, 1), FUNC10(cascade_params_stmt, 2), FUNC10(cascade_params_stmt, 3), FUNC10(cascade_params_stmt, 4));
				cascade->size = FUNC4(FUNC10(cascade_params_stmt, 5), FUNC10(cascade_params_stmt, 6));
			}
			FUNC11(cascade_params_stmt);
		}
		if (cascade)
		{
			const char classifier_params_qs[] =
				"SELECT classifier, count, threshold FROM classifier_params ORDER BY classifier ASC;";
			sqlite3_stmt* classifier_params_stmt = 0;
			if (SQLITE_OK == FUNC13(db, classifier_params_qs, sizeof(classifier_params_qs), &classifier_params_stmt, 0))
			{
				while (FUNC14(classifier_params_stmt) == SQLITE_ROW)
					if (FUNC10(classifier_params_stmt, 0) < cascade->count)
					{
						ccv_scd_stump_classifier_t* classifier = cascade->classifiers + FUNC10(classifier_params_stmt, 0);
						classifier->count = FUNC10(classifier_params_stmt, 1);
						classifier->features = (ccv_scd_stump_feature_t*)FUNC2(sizeof(ccv_scd_stump_feature_t) * classifier->count);
						classifier->threshold = (float)FUNC9(classifier_params_stmt, 2);
					}
				FUNC11(classifier_params_stmt);
			}
			const char feature_params_qs[] =
				"SELECT classifier, id, "
				"sx_0, sy_0, dx_0, dy_0, "
				"sx_1, sy_1, dx_1, dy_1, "
				"sx_2, sy_2, dx_2, dy_2, "
				"sx_3, sy_3, dx_3, dy_3, "
				"bias, w FROM feature_params ORDER BY classifier, id ASC;";
			sqlite3_stmt* feature_params_stmt = 0;
			if (SQLITE_OK == FUNC13(db, feature_params_qs, sizeof(feature_params_qs), &feature_params_stmt, 0))
			{
				while (FUNC14(feature_params_stmt) == SQLITE_ROW)
					if (FUNC10(feature_params_stmt, 0) < cascade->count)
					{
						ccv_scd_stump_classifier_t* classifier = cascade->classifiers + FUNC10(feature_params_stmt, 0);
						if (FUNC10(feature_params_stmt, 1) < classifier->count)
						{
							ccv_scd_stump_feature_t* feature = classifier->features + FUNC10(feature_params_stmt, 1);
							for (i = 0; i < 4; i++)
							{
								feature->sx[i] = FUNC10(feature_params_stmt, 2 + i * 4);
								feature->sy[i] = FUNC10(feature_params_stmt, 3 + i * 4);
								feature->dx[i] = FUNC10(feature_params_stmt, 4 + i * 4);
								feature->dy[i] = FUNC10(feature_params_stmt, 5 + i * 4);
							}
							feature->bias = (float)FUNC9(feature_params_stmt, 18);
							int wnum = FUNC8(feature_params_stmt, 19);
							FUNC0(wnum == 32 * sizeof(float));
							const void* w = FUNC7(feature_params_stmt, 19);
							FUNC5(feature->w, w, sizeof(float) * 32);
						}
					}
				FUNC11(feature_params_stmt);
			}
		}
		FUNC6(db);
	}
	return cascade;
}