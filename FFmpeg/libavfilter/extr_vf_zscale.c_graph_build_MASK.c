#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zimg_image_format ;
typedef  int /*<<< orphan*/  zimg_graph_builder_params ;
typedef  int /*<<< orphan*/  zimg_filter_graph ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 void* FUNC2 (size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static int FUNC7(zimg_filter_graph **graph, zimg_graph_builder_params *params,
                       zimg_image_format *src_format, zimg_image_format *dst_format,
                       void **tmp, size_t *tmp_size)
{
    int ret;
    size_t size;

    FUNC5(*graph);
    *graph = FUNC4(src_format, dst_format, params);
    if (!*graph)
        return FUNC3(NULL);

    ret = FUNC6(*graph, &size);
    if (ret)
        return FUNC3(NULL);

    if (size > *tmp_size) {
        FUNC1(tmp);
        *tmp = FUNC2(size);
        if (!*tmp)
            return FUNC0(ENOMEM);

        *tmp_size = size;
    }

    return 0;
}