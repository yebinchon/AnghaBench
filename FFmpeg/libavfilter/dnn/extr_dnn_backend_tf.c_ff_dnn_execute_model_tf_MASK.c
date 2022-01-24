#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  dt; int /*<<< orphan*/  data; void* channels; void* width; void* height; } ;
struct TYPE_7__ {scalar_t__ model; } ;
struct TYPE_6__ {scalar_t__ nb_output; int /*<<< orphan*/ ** output_tensors; int /*<<< orphan*/  status; int /*<<< orphan*/  outputs; int /*<<< orphan*/  input_tensor; int /*<<< orphan*/  input; int /*<<< orphan*/  session; } ;
typedef  TYPE_1__ TFModel ;
typedef  int /*<<< orphan*/  DNNReturnType ;
typedef  TYPE_2__ DNNModel ;
typedef  TYPE_3__ DNNData ;

/* Variables and functions */
 int /*<<< orphan*/  DNN_ERROR ; 
 int /*<<< orphan*/  DNN_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TF_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 

DNNReturnType FUNC8(const DNNModel *model, DNNData *outputs, uint32_t nb_output)
{
    TFModel *tf_model = (TFModel *)model->model;
    uint32_t nb = FUNC0(nb_output, tf_model->nb_output);
    if (nb == 0)
        return DNN_ERROR;

    FUNC7(tf_model->output_tensors);
    for (uint32_t i = 0; i < tf_model->nb_output; ++i) {
        if (tf_model->output_tensors[i]) {
            FUNC1(tf_model->output_tensors[i]);
            tf_model->output_tensors[i] = NULL;
        }
    }

    FUNC4(tf_model->session, NULL,
                  &tf_model->input, &tf_model->input_tensor, 1,
                  tf_model->outputs, tf_model->output_tensors, nb,
                  NULL, 0, NULL, tf_model->status);

    if (FUNC3(tf_model->status) != TF_OK){
        return DNN_ERROR;
    }

    for (uint32_t i = 0; i < nb; ++i) {
        outputs[i].height = FUNC2(tf_model->output_tensors[i], 1);
        outputs[i].width = FUNC2(tf_model->output_tensors[i], 2);
        outputs[i].channels = FUNC2(tf_model->output_tensors[i], 3);
        outputs[i].data = FUNC5(tf_model->output_tensors[i]);
        outputs[i].dt = FUNC6(tf_model->output_tensors[i]);
    }

    return DNN_SUCCESS;
}