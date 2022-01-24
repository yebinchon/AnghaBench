#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  feature_params_insert_qs ;
typedef  int /*<<< orphan*/  classifier_params_insert_qs ;
struct TYPE_9__ {int* sx; int* sy; int* dx; int* dy; int /*<<< orphan*/  w; int /*<<< orphan*/  bias; } ;
typedef  TYPE_3__ ccv_scd_stump_feature_t ;
struct TYPE_10__ {int count; TYPE_3__* features; int /*<<< orphan*/  threshold; } ;
typedef  TYPE_4__ ccv_scd_stump_classifier_t ;
struct TYPE_8__ {int width; int height; } ;
struct TYPE_7__ {int left; int top; int right; int bottom; } ;
struct TYPE_11__ {int count; TYPE_4__* classifiers; TYPE_2__ size; TYPE_1__ margin; } ;
typedef  TYPE_5__ ccv_scd_classifier_cascade_t ;
typedef  int /*<<< orphan*/  cascade_params_insert_qs ;

/* Variables and functions */
 scalar_t__ SQLITE_DONE ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(ccv_scd_classifier_cascade_t* cascade, const char* filename)
{
	sqlite3* db = 0;
	if (SQLITE_OK == FUNC8(filename, &db))
	{
		const char create_table_qs[] =
			"CREATE TABLE IF NOT EXISTS cascade_params "
			"(id INTEGER PRIMARY KEY ASC, count INTEGER, "
			"margin_left INTEGER, margin_top INTEGER, margin_right INTEGER, margin_bottom INTEGER, "
			"size_width INTEGER, size_height INTEGER);"
			"CREATE TABLE IF NOT EXISTS classifier_params "
			"(classifier INTEGER PRIMARY KEY ASC, count INTEGER, threshold DOUBLE);"
			"CREATE TABLE IF NOT EXISTS feature_params "
			"(classifier INTEGER, id INTEGER, "
			"sx_0 INTEGER, sy_0 INTEGER, dx_0 INTEGER, dy_0 INTEGER, "
			"sx_1 INTEGER, sy_1 INTEGER, dx_1 INTEGER, dy_1 INTEGER, "
			"sx_2 INTEGER, sy_2 INTEGER, dx_2 INTEGER, dy_2 INTEGER, "
			"sx_3 INTEGER, sy_3 INTEGER, dx_3 INTEGER, dy_3 INTEGER, "
			"bias DOUBLE, w BLOB, UNIQUE (classifier, id));";
		FUNC0(SQLITE_OK == FUNC6(db, create_table_qs, 0, 0, 0));
		const char cascade_params_insert_qs[] = 
			"REPLACE INTO cascade_params "
			"(id, count, "
			"margin_left, margin_top, margin_right, margin_bottom, "
			"size_width, size_height) VALUES "
			"(0, $count, " // 0
			"$margin_left, $margin_top, $margin_bottom, $margin_right, " // 4
			"$size_width, $size_height);"; // 6
		sqlite3_stmt* cascade_params_insert_stmt = 0;
		FUNC0(SQLITE_OK == FUNC9(db, cascade_params_insert_qs, sizeof(cascade_params_insert_qs), &cascade_params_insert_stmt, 0));
		FUNC3(cascade_params_insert_stmt, 1, cascade->count);
		FUNC3(cascade_params_insert_stmt, 2, cascade->margin.left);
		FUNC3(cascade_params_insert_stmt, 3, cascade->margin.top);
		FUNC3(cascade_params_insert_stmt, 4, cascade->margin.right);
		FUNC3(cascade_params_insert_stmt, 5, cascade->margin.bottom);
		FUNC3(cascade_params_insert_stmt, 6, cascade->size.width);
		FUNC3(cascade_params_insert_stmt, 7, cascade->size.height);
		FUNC0(SQLITE_DONE == FUNC11(cascade_params_insert_stmt));
		FUNC7(cascade_params_insert_stmt);
		const char classifier_params_insert_qs[] = 
			"REPLACE INTO classifier_params "
			"(classifier, count, threshold) VALUES "
			"($classifier, $count, $threshold);";
		sqlite3_stmt* classifier_params_insert_stmt = 0;
		FUNC0(SQLITE_OK == FUNC9(db, classifier_params_insert_qs, sizeof(classifier_params_insert_qs), &classifier_params_insert_stmt, 0));
		const char feature_params_insert_qs[] =
			"REPLACE INTO feature_params "
			"(classifier, id, "
			"sx_0, sy_0, dx_0, dy_0, "
			"sx_1, sy_1, dx_1, dy_1, "
			"sx_2, sy_2, dx_2, dy_2, "
			"sx_3, sy_3, dx_3, dy_3, "
			"bias, w) VALUES "
			"($classifier, $id, " // 1
			"$sx_0, $sy_0, $dx_0, $dy_0, " // 5
			"$sx_1, $sy_1, $dx_1, $dy_1, " // 9
			"$sx_2, $sy_2, $dx_2, $dy_2, " // 13
			"$sx_3, $sy_3, $dx_3, $dy_3, " // 17
			"$bias, $w);"; // 19
		sqlite3_stmt* feature_params_insert_stmt = 0;
		FUNC0(SQLITE_OK == FUNC9(db, feature_params_insert_qs, sizeof(feature_params_insert_qs), &feature_params_insert_stmt, 0));
		int i, j, k;
		for (i = 0; i < cascade->count; i++)
		{
			ccv_scd_stump_classifier_t* classifier = cascade->classifiers + i;
			FUNC3(classifier_params_insert_stmt, 1, i);
			FUNC3(classifier_params_insert_stmt, 2, classifier->count);
			FUNC2(classifier_params_insert_stmt, 3, classifier->threshold);
			FUNC0(SQLITE_DONE == FUNC11(classifier_params_insert_stmt));
			FUNC10(classifier_params_insert_stmt);
			FUNC4(classifier_params_insert_stmt);
			for (j = 0; j < classifier->count; j++)
			{
				ccv_scd_stump_feature_t* feature = classifier->features + j;
				FUNC3(feature_params_insert_stmt, 1, i);
				FUNC3(feature_params_insert_stmt, 2, j);
				for (k = 0; k < 4; k++)
				{
					FUNC3(feature_params_insert_stmt, 3 + k * 4, feature->sx[k]);
					FUNC3(feature_params_insert_stmt, 4 + k * 4, feature->sy[k]);
					FUNC3(feature_params_insert_stmt, 5 + k * 4, feature->dx[k]);
					FUNC3(feature_params_insert_stmt, 6 + k * 4, feature->dy[k]);
				}
				FUNC2(feature_params_insert_stmt, 19, feature->bias);
				FUNC1(feature_params_insert_stmt, 20, feature->w, sizeof(float) * 32, SQLITE_STATIC);
				FUNC0(SQLITE_DONE == FUNC11(feature_params_insert_stmt));
				FUNC10(feature_params_insert_stmt);
				FUNC4(feature_params_insert_stmt);
			}
		}
		FUNC7(classifier_params_insert_stmt);
		FUNC7(feature_params_insert_stmt);
		FUNC5(db);
	}
}