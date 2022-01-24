#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long length; int /*<<< orphan*/  data_deallocator; void* data; } ;
typedef  TYPE_1__ TF_Buffer ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**) ; 
 unsigned char* FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *,unsigned char*,long) ; 
 long FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free_buffer ; 

__attribute__((used)) static TF_Buffer *FUNC7(const char *model_filename)
{
    TF_Buffer *graph_buf;
    unsigned char *graph_data = NULL;
    AVIOContext *model_file_context;
    long size, bytes_read;

    if (FUNC4(&model_file_context, model_filename, AVIO_FLAG_READ) < 0){
        return NULL;
    }

    size = FUNC6(model_file_context);

    graph_data = FUNC2(size);
    if (!graph_data){
        FUNC3(&model_file_context);
        return NULL;
    }
    bytes_read = FUNC5(model_file_context, graph_data, size);
    FUNC3(&model_file_context);
    if (bytes_read != size){
        FUNC1(&graph_data);
        return NULL;
    }

    graph_buf = FUNC0();
    graph_buf->data = (void *)graph_data;
    graph_buf->length = size;
    graph_buf->data_deallocator = free_buffer;

    return graph_buf;
}