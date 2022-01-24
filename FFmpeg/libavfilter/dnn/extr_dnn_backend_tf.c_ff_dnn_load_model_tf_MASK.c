#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * get_input; int /*<<< orphan*/ * set_input_output; void* model; } ;
typedef  TYPE_1__ TFModel ;
typedef  TYPE_1__ DNNModel ;

/* Variables and functions */
 scalar_t__ DNN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  get_input_tf ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  set_input_output_tf ; 

DNNModel *FUNC5(const char *model_filename)
{
    DNNModel *model = NULL;
    TFModel *tf_model = NULL;

    model = FUNC1(sizeof(DNNModel));
    if (!model){
        return NULL;
    }

    tf_model = FUNC2(sizeof(TFModel));
    if (!tf_model){
        FUNC0(&model);
        return NULL;
    }

    if (FUNC4(tf_model, model_filename) != DNN_SUCCESS){
        if (FUNC3(tf_model, model_filename) != DNN_SUCCESS){
            FUNC0(&tf_model);
            FUNC0(&model);

            return NULL;
        }
    }

    model->model = (void *)tf_model;
    model->set_input_output = &set_input_output_tf;
    model->get_input = &get_input_tf;

    return model;
}