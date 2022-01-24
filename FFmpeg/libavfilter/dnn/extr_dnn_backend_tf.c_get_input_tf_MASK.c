#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_9__ {int height; int width; int channels; int /*<<< orphan*/  dt; } ;
struct TYPE_8__ {int /*<<< orphan*/  graph; } ;
struct TYPE_7__ {scalar_t__ index; int /*<<< orphan*/  oper; } ;
typedef  int /*<<< orphan*/  TF_Status ;
typedef  TYPE_1__ TF_Output ;
typedef  TYPE_2__ TFModel ;
typedef  int /*<<< orphan*/  DNNReturnType ;
typedef  TYPE_3__ DNNData ;

/* Variables and functions */
 int /*<<< orphan*/  DNN_ERROR ; 
 int /*<<< orphan*/  DNN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ TF_OK ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static DNNReturnType FUNC7(void *model, DNNData *input, const char *input_name)
{
    TFModel *tf_model = (TFModel *)model;
    TF_Status *status;
    int64_t dims[4];

    TF_Output tf_output;
    tf_output.oper = FUNC3(tf_model->graph, input_name);
    if (!tf_output.oper)
        return DNN_ERROR;

    tf_output.index = 0;
    input->dt = FUNC5(tf_output);

    status = FUNC4();
    FUNC2(tf_model->graph, tf_output, dims, 4, status);
    if (FUNC1(status) != TF_OK){
        FUNC0(status);
        return DNN_ERROR;
    }
    FUNC0(status);

    // currently only NHWC is supported
    FUNC6(dims[0] == 1);
    input->height = dims[1];
    input->width = dims[2];
    input->channels = dims[3];

    return DNN_SUCCESS;
}