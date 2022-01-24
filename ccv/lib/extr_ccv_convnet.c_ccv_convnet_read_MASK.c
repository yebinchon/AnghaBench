#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_48__   TYPE_9__ ;
typedef  struct TYPE_47__   TYPE_8__ ;
typedef  struct TYPE_46__   TYPE_7__ ;
typedef  struct TYPE_45__   TYPE_6__ ;
typedef  struct TYPE_44__   TYPE_5__ ;
typedef  struct TYPE_43__   TYPE_4__ ;
typedef  struct TYPE_42__   TYPE_3__ ;
typedef  struct TYPE_41__   TYPE_2__ ;
typedef  struct TYPE_40__   TYPE_1__ ;
typedef  struct TYPE_39__   TYPE_19__ ;
typedef  struct TYPE_38__   TYPE_18__ ;
typedef  struct TYPE_37__   TYPE_17__ ;
typedef  struct TYPE_36__   TYPE_16__ ;
typedef  struct TYPE_35__   TYPE_15__ ;
typedef  struct TYPE_34__   TYPE_14__ ;
typedef  struct TYPE_33__   TYPE_13__ ;
typedef  struct TYPE_32__   TYPE_12__ ;
typedef  struct TYPE_31__   TYPE_11__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  layer_params_qs ;
typedef  int /*<<< orphan*/  layer_data_qs ;
typedef  int /*<<< orphan*/  convnet_params_mean_activity_qs ;
typedef  int /*<<< orphan*/  convnet_params_input_qs ;
struct TYPE_35__ {int height; int width; } ;
typedef  TYPE_15__ ccv_size_t ;
struct TYPE_43__ {int height; int width; } ;
struct TYPE_36__ {int channels; TYPE_6__* mean_activity; TYPE_4__ input; TYPE_17__* layers; } ;
typedef  TYPE_16__ ccv_convnet_t ;
struct TYPE_41__ {int count; } ;
struct TYPE_40__ {int count; } ;
struct TYPE_42__ {TYPE_2__ full_connect; TYPE_1__ convolutional; } ;
struct TYPE_37__ {int wnum; int type; TYPE_3__ net; int /*<<< orphan*/  bias; int /*<<< orphan*/  w; } ;
typedef  TYPE_17__ ccv_convnet_layer_t ;
struct TYPE_33__ {int size; void* beta; void* alpha; void* kappa; } ;
struct TYPE_32__ {int strides; int border; int size; } ;
struct TYPE_31__ {int count; int relu; } ;
struct TYPE_30__ {int rows; int cols; int channels; int partition; int count; int strides; int border; } ;
struct TYPE_34__ {TYPE_13__ rnorm; TYPE_12__ pool; TYPE_11__ full_connect; TYPE_10__ convolutional; } ;
struct TYPE_47__ {int count; } ;
struct TYPE_46__ {int rows; int cols; int channels; int partition; } ;
struct TYPE_48__ {TYPE_8__ node; TYPE_7__ matrix; } ;
struct TYPE_38__ {int type; TYPE_14__ output; scalar_t__ glorot; scalar_t__ bias; TYPE_9__ input; } ;
typedef  TYPE_18__ ccv_convnet_layer_param_t ;
struct TYPE_39__ {int /*<<< orphan*/  rnum; } ;
typedef  TYPE_19__ ccv_array_t ;
struct TYPE_44__ {int /*<<< orphan*/  f32; } ;
struct TYPE_45__ {TYPE_5__ data; } ;

/* Variables and functions */
#define  CCV_CONVNET_AVERAGE_POOL 132 
#define  CCV_CONVNET_CONVOLUTIONAL 131 
#define  CCV_CONVNET_FULL_CONNECT 130 
#define  CCV_CONVNET_LOCAL_RESPONSE_NORM 129 
#define  CCV_CONVNET_MAX_POOL 128 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_19__*) ; 
 scalar_t__ FUNC4 (TYPE_19__*,int /*<<< orphan*/ ) ; 
 TYPE_19__* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_19__*,TYPE_18__*) ; 
 TYPE_16__* FUNC7 (int,TYPE_15__,TYPE_18__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,float*,int) ; 
 TYPE_15__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void const* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 void* FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 

ccv_convnet_t* FUNC20(int use_cwc_accel, const char* filename)
{
	sqlite3* db = 0;
	if (SQLITE_OK == FUNC17(filename, &db))
	{
		ccv_convnet_t* convnet = 0;
		sqlite3_stmt* layer_params_stmt = 0;
		// load layer params
		const char layer_params_qs[] =
			"SELECT type, " // 1
			"input_matrix_rows, input_matrix_cols, input_matrix_channels, input_matrix_partition, input_node_count, " // 6
			"output_rows, output_cols, output_channels, output_partition, output_count, output_strides, output_border, " // 13
			"output_size, output_kappa, output_alpha, output_beta, output_relu FROM layer_params ORDER BY layer ASC;"; // 18
		if (SQLITE_OK == FUNC18(db, layer_params_qs, sizeof(layer_params_qs), &layer_params_stmt, 0))
		{
			ccv_array_t* layer_params = FUNC5(sizeof(ccv_convnet_layer_param_t), 3, 0);
			while (FUNC19(layer_params_stmt) == SQLITE_ROW)
			{
				ccv_convnet_layer_param_t layer_param;
				layer_param.type = FUNC15(layer_params_stmt, 0);
				layer_param.input.matrix.rows = FUNC15(layer_params_stmt, 1);
				layer_param.input.matrix.cols = FUNC15(layer_params_stmt, 2);
				layer_param.input.matrix.channels = FUNC15(layer_params_stmt, 3);
				layer_param.input.matrix.partition = FUNC15(layer_params_stmt, 4);
				layer_param.input.node.count = FUNC15(layer_params_stmt, 5);
				layer_param.bias = layer_param.glorot = 0; // this is irrelevant to read convnet
				switch (layer_param.type)
				{
					case CCV_CONVNET_CONVOLUTIONAL:
						layer_param.output.convolutional.rows = FUNC15(layer_params_stmt, 6);
						layer_param.output.convolutional.cols = FUNC15(layer_params_stmt, 7);
						layer_param.output.convolutional.channels = FUNC15(layer_params_stmt, 8);
						layer_param.output.convolutional.partition = FUNC15(layer_params_stmt, 9);
						layer_param.output.convolutional.count = FUNC15(layer_params_stmt, 10);
						layer_param.output.convolutional.strides = FUNC15(layer_params_stmt, 11);
						layer_param.output.convolutional.border = FUNC15(layer_params_stmt, 12);
						break;
					case CCV_CONVNET_FULL_CONNECT:
						layer_param.output.full_connect.count = FUNC15(layer_params_stmt, 10);
						layer_param.output.full_connect.relu = FUNC15(layer_params_stmt, 17);
						break;
					case CCV_CONVNET_MAX_POOL:
					case CCV_CONVNET_AVERAGE_POOL:
						layer_param.output.pool.strides = FUNC15(layer_params_stmt, 11);
						layer_param.output.pool.border = FUNC15(layer_params_stmt, 12);
						layer_param.output.pool.size = FUNC15(layer_params_stmt, 13);
						break;
					case CCV_CONVNET_LOCAL_RESPONSE_NORM:
						layer_param.output.rnorm.size = FUNC15(layer_params_stmt, 13);
						layer_param.output.rnorm.kappa = FUNC14(layer_params_stmt, 14);
						layer_param.output.rnorm.alpha = FUNC14(layer_params_stmt, 15);
						layer_param.output.rnorm.beta = FUNC14(layer_params_stmt, 16);
						break;
				}
				FUNC6(layer_params, &layer_param);
			}
			FUNC16(layer_params_stmt);
			sqlite3_stmt* convnet_params_input_stmt = 0;
			// load convnet params for input
			const char convnet_params_input_qs[] =
				"SELECT input_height, input_width FROM convnet_params WHERE convnet = 0;";
			ccv_size_t input = FUNC9(0, 0);
			if (SQLITE_OK == FUNC18(db, convnet_params_input_qs, sizeof(convnet_params_input_qs), &convnet_params_input_stmt, 0))
			{
				if (FUNC19(convnet_params_input_stmt) == SQLITE_ROW)
				{
					input.height = FUNC15(convnet_params_input_stmt, 0);
					input.width = FUNC15(convnet_params_input_stmt, 1);
				}
				FUNC16(convnet_params_input_stmt);
			}
			FUNC0(input.height != 0 && input.width != 0);
			convnet = FUNC7(use_cwc_accel, input, (ccv_convnet_layer_param_t*)FUNC4(layer_params, 0), layer_params->rnum);
			FUNC3(layer_params);
			// load layer data
			sqlite3_stmt* layer_data_stmt = 0;
			const char layer_data_qs[] =
				"SELECT layer, weight, bias, half_precision FROM layer_data;";
			if (SQLITE_OK == FUNC18(db, layer_data_qs, sizeof(layer_data_qs), &layer_data_stmt, 0))
			{
				while (FUNC19(layer_data_stmt) == SQLITE_ROW)
				{
					ccv_convnet_layer_t* layer = convnet->layers + FUNC15(layer_data_stmt, 0);
					int half_precision = FUNC15(layer_data_stmt, 3);
					int wnum = FUNC13(layer_data_stmt, 1) / (half_precision ? sizeof(uint16_t) : sizeof(float));
					// if weights available, load weights
					if (wnum == layer->wnum)
					{
						const void* w = FUNC12(layer_data_stmt, 1);
						if (half_precision)
						{
							float* f = (float*)FUNC2(sizeof(float) * layer->wnum);
							FUNC8((uint16_t*)w, f, layer->wnum);
							w = f;
						}
						switch (layer->type)
						{
							case CCV_CONVNET_CONVOLUTIONAL:
								FUNC10(layer->w, w, sizeof(float) * layer->wnum);
								break;
							case CCV_CONVNET_FULL_CONNECT:
								FUNC10(layer->w, w, sizeof(float) * layer->wnum);
								break;
						}
						if (half_precision)
							FUNC1((void*)w);
					}
					int bnum = FUNC13(layer_data_stmt, 2) / (half_precision ? sizeof(uint16_t) : sizeof(float));
					// if bias available, load bias
					if (bnum == (layer->type == CCV_CONVNET_CONVOLUTIONAL ? layer->net.convolutional.count : layer->net.full_connect.count))
					{
						const void* bias = FUNC12(layer_data_stmt, 2);
						if (half_precision)
						{
							float* f = (float*)FUNC2(sizeof(float) * (layer->type == CCV_CONVNET_CONVOLUTIONAL ? layer->net.convolutional.count : layer->net.full_connect.count));
							FUNC8((uint16_t*)bias, f, layer->type == CCV_CONVNET_CONVOLUTIONAL ? layer->net.convolutional.count : layer->net.full_connect.count);
							bias = f;
						}
						switch (layer->type)
						{
							case CCV_CONVNET_CONVOLUTIONAL:
								FUNC10(layer->bias, bias, sizeof(float) * layer->net.convolutional.count);
								break;
							case CCV_CONVNET_FULL_CONNECT:
								FUNC10(layer->bias, bias, sizeof(float) * layer->net.full_connect.count);
								break;
						}
						if (half_precision)
							FUNC1((void*)bias);
					}
				}
				FUNC16(layer_data_stmt);
			}
			sqlite3_stmt* convnet_params_mean_activity_stmt = 0;
			// load convnet params for mean activity
			const char convnet_params_mean_activity_qs[] =
				"SELECT mean_activity FROM convnet_params WHERE convnet = 0;";
			if (SQLITE_OK == FUNC18(db, convnet_params_mean_activity_qs, sizeof(convnet_params_mean_activity_qs), &convnet_params_mean_activity_stmt, 0))
			{
				if (FUNC19(convnet_params_mean_activity_stmt) == SQLITE_ROW)
				{
					int elems = FUNC13(convnet_params_mean_activity_stmt, 0) / sizeof(float);
					if (elems == convnet->input.height * convnet->input.width * convnet->channels)
						FUNC10(convnet->mean_activity->data.f32, FUNC12(convnet_params_mean_activity_stmt, 0), sizeof(float) * elems);
				}
				FUNC16(convnet_params_mean_activity_stmt);
			}
		}
		FUNC11(db);
		return convnet;
	}
	return 0;
}