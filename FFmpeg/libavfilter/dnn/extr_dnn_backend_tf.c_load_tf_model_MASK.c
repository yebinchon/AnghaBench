#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  status; int /*<<< orphan*/  graph; } ;
typedef  int /*<<< orphan*/  TF_ImportGraphDefOptions ;
typedef  int /*<<< orphan*/  TF_Buffer ;
typedef  TYPE_1__ TFModel ;
typedef  int /*<<< orphan*/  DNNReturnType ;

/* Variables and functions */
 int /*<<< orphan*/  DNN_ERROR ; 
 int /*<<< orphan*/  DNN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ TF_OK ; 
 int /*<<< orphan*/ * FUNC9 (char const*) ; 

__attribute__((used)) static DNNReturnType FUNC10(TFModel *tf_model, const char *model_filename)
{
    TF_Buffer *graph_def;
    TF_ImportGraphDefOptions *graph_opts;

    graph_def = FUNC9(model_filename);
    if (!graph_def){
        return DNN_ERROR;
    }
    tf_model->graph = FUNC6();
    tf_model->status = FUNC8();
    graph_opts = FUNC7();
    FUNC5(tf_model->graph, graph_def, graph_opts, tf_model->status);
    FUNC2(graph_opts);
    FUNC0(graph_def);
    if (FUNC4(tf_model->status) != TF_OK){
        FUNC1(tf_model->graph);
        FUNC3(tf_model->status);
        return DNN_ERROR;
    }

    return DNN_SUCCESS;
}