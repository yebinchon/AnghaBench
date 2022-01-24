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
struct TYPE_3__ {void* depth; int /*<<< orphan*/  sampling; void* height; void* width; } ;
typedef  TYPE_1__ PayloadContext ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVStream *stream,
                              PayloadContext *data, const char *attr,
                              const char *value)
{
    if (!FUNC2(attr, "width", 5))
        data->width = FUNC0(value);
    else if (!FUNC2(attr, "height", 6))
        data->height = FUNC0(value);
    else if (!FUNC2(attr, "sampling", 8))
        data->sampling = FUNC1(value);
    else if (!FUNC2(attr, "depth", 5))
        data->depth = FUNC0(value);

    return 0;
}