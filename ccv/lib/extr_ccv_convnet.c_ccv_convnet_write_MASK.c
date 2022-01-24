#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  layer_params_insert_qs ;
typedef  int /*<<< orphan*/  layer_data_insert_qs ;
typedef  int /*<<< orphan*/  convnet_params_insert_qs ;
struct TYPE_19__ {int half_precision; } ;
typedef  TYPE_12__ ccv_convnet_write_param_t ;
struct TYPE_24__ {int height; int width; } ;
struct TYPE_20__ {int count; int channels; TYPE_3__ input; TYPE_2__* mean_activity; TYPE_14__* layers; } ;
typedef  TYPE_13__ ccv_convnet_t ;
struct TYPE_29__ {int count; int relu; } ;
struct TYPE_28__ {int rows; int cols; int channels; int partition; int count; int strides; int border; } ;
struct TYPE_17__ {int size; int /*<<< orphan*/  beta; int /*<<< orphan*/  alpha; int /*<<< orphan*/  kappa; } ;
struct TYPE_30__ {int strides; int border; int size; } ;
struct TYPE_18__ {TYPE_8__ full_connect; TYPE_7__ convolutional; TYPE_10__ rnorm; TYPE_9__ pool; } ;
struct TYPE_26__ {int count; } ;
struct TYPE_25__ {int rows; int cols; int channels; int partition; } ;
struct TYPE_27__ {TYPE_5__ node; TYPE_4__ matrix; } ;
struct TYPE_21__ {int type; int wnum; TYPE_11__ net; int /*<<< orphan*/ * bias; int /*<<< orphan*/ * w; TYPE_6__ input; } ;
typedef  TYPE_14__ ccv_convnet_layer_t ;
struct TYPE_22__ {int /*<<< orphan*/ * f32; } ;
struct TYPE_23__ {int rows; int cols; TYPE_1__ data; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ CCV_32F ; 
#define  CCV_CONVNET_AVERAGE_POOL 132 
#define  CCV_CONVNET_CONVOLUTIONAL 131 
#define  CCV_CONVNET_FULL_CONNECT 130 
#define  CCV_CONVNET_LOCAL_RESPONSE_NORM 129 
#define  CCV_CONVNET_MAX_POOL 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SQLITE_DONE ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ccfree ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(ccv_convnet_t* convnet, const char* filename, ccv_convnet_write_param_t params)
{
	sqlite3* db = 0;
	if (SQLITE_OK == FUNC12(filename, &db))
	{
		const char layer_create_table_qs[] =
			"CREATE TABLE IF NOT EXISTS layer_params "
			"(layer INTEGER PRIMARY KEY ASC, type INTEGER, "
			"input_matrix_rows INTEGER, input_matrix_cols INTEGER, input_matrix_channels INTEGER, input_matrix_partition INTEGER, input_node_count INTEGER, "
			"output_rows INTEGER, output_cols INTEGER, output_channels INTEGER, output_partition INTEGER, output_count INTEGER, output_strides INTEGER, output_border INTEGER, "
			"output_size INTEGER, output_kappa REAL, output_alpha REAL, output_beta REAL, output_relu INTEGER);"
			"CREATE TABLE IF NOT EXISTS convnet_params "
			"(convnet INTEGER PRIMARY KEY ASC, input_height INTEGER, input_width INTEGER, mean_activity BLOB);"
			"CREATE TABLE IF NOT EXISTS layer_data "
			"(layer INTEGER PRIMARY KEY ASC, weight BLOB, bias BLOB, half_precision INTEGER);";
		FUNC2(SQLITE_OK == FUNC10(db, layer_create_table_qs, 0, 0, 0));
		const char layer_params_insert_qs[] = 
			"REPLACE INTO layer_params "
			"(layer, type, "
			"input_matrix_rows, input_matrix_cols, input_matrix_channels, input_matrix_partition, input_node_count, "
			"output_rows, output_cols, output_channels, output_partition, output_count, output_strides, output_border, "
			"output_size, output_kappa, output_alpha, output_beta, output_relu) VALUES "
			"($layer, $type, " // 1
			"$input_matrix_rows, $input_matrix_cols, $input_matrix_channels, $input_matrix_partition, $input_node_count, " // 6
			"$output_rows, $output_cols, $output_channels, $output_partition, $output_count, $output_strides, $output_border, " // 13
			"$output_size, $output_kappa, $output_alpha, $output_beta, $output_relu);"; // 18
		sqlite3_stmt* layer_params_insert_stmt = 0;
		FUNC2(SQLITE_OK == FUNC13(db, layer_params_insert_qs, sizeof(layer_params_insert_qs), &layer_params_insert_stmt, 0));
		const char layer_data_insert_qs[] =
			"REPLACE INTO layer_data "
			"(layer, weight, bias, half_precision) VALUES ($layer, $weight, $bias, $half_precision);";
		sqlite3_stmt* layer_data_insert_stmt = 0;
		FUNC2(SQLITE_OK == FUNC13(db, layer_data_insert_qs, sizeof(layer_data_insert_qs), &layer_data_insert_stmt, 0));
		int i;
		for (i = 0; i < convnet->count; i++)
		{
			ccv_convnet_layer_t* layer = convnet->layers + i;
			// insert layer params
			FUNC7(layer_params_insert_stmt, 1, i);
			FUNC7(layer_params_insert_stmt, 2, layer->type);
			FUNC7(layer_params_insert_stmt, 3, layer->input.matrix.rows);
			FUNC7(layer_params_insert_stmt, 4, layer->input.matrix.cols);
			FUNC7(layer_params_insert_stmt, 5, layer->input.matrix.channels);
			FUNC7(layer_params_insert_stmt, 6, layer->input.matrix.partition);
			FUNC7(layer_params_insert_stmt, 7, layer->input.node.count);
			switch (layer->type)
			{
				case CCV_CONVNET_CONVOLUTIONAL:
					FUNC7(layer_params_insert_stmt, 8, layer->net.convolutional.rows);
					FUNC7(layer_params_insert_stmt, 9, layer->net.convolutional.cols);
					FUNC7(layer_params_insert_stmt, 10, layer->net.convolutional.channels);
					FUNC7(layer_params_insert_stmt, 11, layer->net.convolutional.partition);
					FUNC7(layer_params_insert_stmt, 12, layer->net.convolutional.count);
					FUNC7(layer_params_insert_stmt, 13, layer->net.convolutional.strides);
					FUNC7(layer_params_insert_stmt, 14, layer->net.convolutional.border);
					break;
				case CCV_CONVNET_FULL_CONNECT:
					FUNC7(layer_params_insert_stmt, 12, layer->net.full_connect.count);
					FUNC7(layer_params_insert_stmt, 19, layer->net.full_connect.relu);
					break;
				case CCV_CONVNET_MAX_POOL:
				case CCV_CONVNET_AVERAGE_POOL:
					FUNC7(layer_params_insert_stmt, 13, layer->net.pool.strides);
					FUNC7(layer_params_insert_stmt, 14, layer->net.pool.border);
					FUNC7(layer_params_insert_stmt, 15, layer->net.pool.size);
					break;
				case CCV_CONVNET_LOCAL_RESPONSE_NORM:
					FUNC7(layer_params_insert_stmt, 15, layer->net.rnorm.size);
					FUNC6(layer_params_insert_stmt, 16, layer->net.rnorm.kappa);
					FUNC6(layer_params_insert_stmt, 17, layer->net.rnorm.alpha);
					FUNC6(layer_params_insert_stmt, 18, layer->net.rnorm.beta);
					break;
			}
			FUNC2(SQLITE_DONE == FUNC15(layer_params_insert_stmt));
			FUNC14(layer_params_insert_stmt);
			FUNC8(layer_params_insert_stmt);
			// insert layer data
			if (layer->type == CCV_CONVNET_CONVOLUTIONAL || layer->type == CCV_CONVNET_FULL_CONNECT)
			{
				FUNC7(layer_data_insert_stmt, 1, i);
				if (params.half_precision)
				{
					uint16_t* w = (uint16_t*)FUNC3(sizeof(uint16_t) * layer->wnum);
					FUNC4(layer->w, w, layer->wnum);
					uint16_t* bias = (uint16_t*)FUNC3(sizeof(uint16_t) * (layer->type == CCV_CONVNET_CONVOLUTIONAL ? layer->net.convolutional.count : layer->net.full_connect.count));
					FUNC4(layer->bias, bias, layer->type == CCV_CONVNET_CONVOLUTIONAL ? layer->net.convolutional.count : layer->net.full_connect.count);
					FUNC5(layer_data_insert_stmt, 2, w, sizeof(uint16_t) * layer->wnum, ccfree);
					FUNC5(layer_data_insert_stmt, 3, bias, sizeof(uint16_t) * (layer->type == CCV_CONVNET_CONVOLUTIONAL ? layer->net.convolutional.count : layer->net.full_connect.count), ccfree);
				} else {
					FUNC5(layer_data_insert_stmt, 2, layer->w, sizeof(float) * layer->wnum, SQLITE_STATIC);
					FUNC5(layer_data_insert_stmt, 3, layer->bias, sizeof(float) * (layer->type == CCV_CONVNET_CONVOLUTIONAL ? layer->net.convolutional.count : layer->net.full_connect.count), SQLITE_STATIC);
				}
				FUNC7(layer_data_insert_stmt, 4, params.half_precision);
				FUNC2(SQLITE_DONE == FUNC15(layer_data_insert_stmt));
				FUNC14(layer_data_insert_stmt);
				FUNC8(layer_data_insert_stmt);
			}
		}
		// insert convnet related params
		const char convnet_params_insert_qs[] =
			"REPLACE INTO convnet_params "
			"(convnet, mean_activity, input_height, input_width) VALUES (0, $mean_activity, $input_height, $input_width);";
		sqlite3_stmt* convnet_params_insert_stmt = 0;
		FUNC2(SQLITE_OK == FUNC13(db, convnet_params_insert_qs, sizeof(convnet_params_insert_qs), &convnet_params_insert_stmt, 0));
		FUNC2(convnet->mean_activity->rows == convnet->input.height);
		FUNC2(convnet->mean_activity->cols == convnet->input.width);
		FUNC2(FUNC0(convnet->mean_activity->type) == convnet->channels);
		FUNC2(FUNC1(convnet->mean_activity->type) == CCV_32F);
		FUNC5(convnet_params_insert_stmt, 1, convnet->mean_activity->data.f32, sizeof(float) * convnet->input.height * convnet->input.width * convnet->channels, SQLITE_STATIC);
		FUNC7(convnet_params_insert_stmt, 2, convnet->input.height);
		FUNC7(convnet_params_insert_stmt, 3, convnet->input.width);
		FUNC2(SQLITE_DONE == FUNC15(convnet_params_insert_stmt));
		FUNC14(convnet_params_insert_stmt);
		FUNC8(convnet_params_insert_stmt);

		FUNC11(layer_params_insert_stmt);
		FUNC11(layer_data_insert_stmt);
		FUNC11(convnet_params_insert_stmt);
		FUNC9(db);
	}
}