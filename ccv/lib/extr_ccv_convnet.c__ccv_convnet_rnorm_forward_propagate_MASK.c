#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {float* f32; } ;
struct TYPE_16__ {int rows; int cols; TYPE_3__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ ccv_dense_matrix_t ;
struct TYPE_13__ {int size; float kappa; float alpha; float beta; } ;
struct TYPE_14__ {TYPE_1__ rnorm; } ;
struct TYPE_17__ {TYPE_2__ net; } ;
typedef  TYPE_5__ ccv_convnet_layer_t ;

/* Variables and functions */
 int CCV_32F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int,int,int*,int*,int*) ; 
 TYPE_4__* FUNC4 (TYPE_4__*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 
 float FUNC7 (float,float) ; 

__attribute__((used)) static void FUNC8(ccv_convnet_layer_t* layer, ccv_dense_matrix_t* a, ccv_dense_matrix_t** b, ccv_dense_matrix_t** denoms)
{
	int rows, cols, partition;
	FUNC3(layer, a->rows, a->cols, &rows, &cols, &partition);
	int size = layer->net.rnorm.size;
	float kappa = layer->net.rnorm.kappa;
	float alpha = layer->net.rnorm.alpha;
	float beta = layer->net.rnorm.beta;
	int way = size / 2;
	FUNC2(FUNC1(a->type) == CCV_32F);
	int ch = FUNC0(a->type);
	int type = CCV_32F | ch;
	ccv_dense_matrix_t* db = *b = FUNC4(*b, rows, cols, type, type, 0);
	int i, j, k, x, p;
	float* ap = a->data.f32;
	float* bp = db->data.f32;
	int ch_per_partition = ch / partition;
	if (denoms)
	{
		ccv_dense_matrix_t* ddenoms = *denoms = FUNC4(*denoms, rows, cols, type, type, 0);
		float* dp = ddenoms->data.f32;
		for (i = 0; i < db->rows; i++)
		{
			for (j = 0; j < db->cols; j++)
				for (p = 0; p < partition; p++)
					for (k = 0; k < ch_per_partition; k++)
					{
						float v = ap[j * ch + p * ch_per_partition + k];
						float denom = 0;
						for (x = FUNC5(k - way, 0); x <= FUNC6(k + way, ch_per_partition - 1); x++)
							denom += ap[j * ch + p * ch_per_partition + x] * ap[j * ch + p * ch_per_partition + x];
						denom = kappa + alpha * denom;
						dp[j * ch + p * ch_per_partition + k] = denom;
						bp[j * ch + p * ch_per_partition + k] = v * FUNC7(denom, -beta);
					}
			ap += a->cols * ch;
			dp += ddenoms->cols * ch;
			bp += db->cols * ch;
		}
	} else {
		for (i = 0; i < db->rows; i++)
		{
			for (j = 0; j < db->cols; j++)
				for (p = 0; p < partition; p++)
					for (k = 0; k < ch_per_partition; k++)
					{
						float v = ap[j * ch + p * ch_per_partition + k];
						float denom = 0;
						for (x = FUNC5(k - way, 0); x <= FUNC6(k + way, ch_per_partition - 1); x++)
							denom += ap[j * ch + p * ch_per_partition + x] * ap[j * ch + p * ch_per_partition + x];
						denom = kappa + alpha * denom;
						bp[j * ch + p * ch_per_partition + k] = v * FUNC7(denom, -beta);
					}
			ap += a->cols * ch;
			bp += db->cols * ch;
		}
	}
}