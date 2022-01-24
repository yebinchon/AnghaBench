#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {float* f32; } ;
struct TYPE_15__ {int rows; int cols; TYPE_3__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ ccv_dense_matrix_t ;
struct TYPE_12__ {int size; int strides; int border; } ;
struct TYPE_13__ {TYPE_1__ pool; } ;
struct TYPE_16__ {TYPE_2__ net; } ;
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

__attribute__((used)) static void FUNC7(ccv_convnet_layer_t* layer, ccv_dense_matrix_t* a, ccv_dense_matrix_t** b)
{
	int rows, cols, partition;
	FUNC3(layer, a->rows, a->cols, &rows, &cols, &partition);
	int size = layer->net.pool.size;
	int strides = layer->net.pool.strides;
	int border = layer->net.pool.border;
	FUNC2(FUNC1(a->type) == CCV_32F);
	int ch = FUNC0(a->type);
	int type = CCV_32F | ch;
	ccv_dense_matrix_t* db = *b = FUNC4(*b, rows, cols, type, type, 0);
	int i, j, k, x, y;
	float* ap = a->data.f32;
	float* bp = db->data.f32;
	for (i = 0; i < db->rows; i++)
	{
		const int start_y = FUNC5(i * strides - border, 0) - (i * strides - border);
		const int end_y = size + FUNC6(i * strides + size - border, a->rows) - (i * strides + size - border);
		for (j = 0; j < db->cols; j++)
		{
			const int start_x = FUNC5(j * strides - border, 0) - (j * strides - border);
			const int end_x = size + FUNC6(j * strides + size - border, a->cols) - (j * strides + size - border);
			for (k = 0; k < ch; k++)
			{
				float v = 0;
				for (y = start_y; y < end_y; y++)
					for (x = start_x; x < end_x; x++)
						if (x == start_x && y == start_y)
							v = ap[(j * strides - border + x + (y - border) * a->cols) * ch + k];
						else if (ap[(j * strides - border + x + (y - border) * a->cols) * ch + k] > v)
							v = ap[(j * strides - border + x + (y - border) * a->cols) * ch + k];
				bp[j * ch + k] = v;
			}
		}
		ap += a->cols * ch * strides;
		bp += db->cols * ch;
	}
}