#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_8__ {int type; } ;
typedef  TYPE_1__ ccv_convnet_layer_t ;

/* Variables and functions */
#define  CCV_CONVNET_AVERAGE_POOL 132 
#define  CCV_CONVNET_CONVOLUTIONAL 131 
#define  CCV_CONVNET_FULL_CONNECT 130 
#define  CCV_CONVNET_LOCAL_RESPONSE_NORM 129 
#define  CCV_CONVNET_MAX_POOL 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC5(ccv_convnet_layer_t* layer, ccv_dense_matrix_t* a, ccv_dense_matrix_t** b, ccv_dense_matrix_t** denoms)
{
	switch(layer->type)
	{
		case CCV_CONVNET_CONVOLUTIONAL:
			FUNC1(layer, a, b);
			break;
		case CCV_CONVNET_FULL_CONNECT:
			FUNC2(layer, a, b);
			break;
		case CCV_CONVNET_LOCAL_RESPONSE_NORM:
			FUNC4(layer, a, b, denoms);
			break;
		case CCV_CONVNET_MAX_POOL:
			FUNC3(layer, a, b);
			break;
		case CCV_CONVNET_AVERAGE_POOL:
			FUNC0(layer, a, b);
			break;
	}
}