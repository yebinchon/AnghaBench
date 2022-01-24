#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cl_platform_id ;
struct TYPE_6__ {int /*<<< orphan*/  key; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  key; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  AVHWDeviceContext ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* opencl_platform_params ; 

__attribute__((used)) static int FUNC6(AVHWDeviceContext *hwdev,
                                  cl_platform_id platform_id,
                                  const char *platform_name,
                                  void *context)
{
    AVDictionary *opts = context;
    const AVDictionaryEntry *param;
    char *str;
    int i, ret = 0;

    for (i = 0; i < FUNC0(opencl_platform_params); i++) {
        param = FUNC1(opts, opencl_platform_params[i].key,
                            NULL, 0);
        if (!param)
            continue;

        str = FUNC5(platform_id,
                                         opencl_platform_params[i].name);
        if (!str) {
            FUNC3(hwdev, AV_LOG_ERROR, "Failed to query %s "
                   "of platform \"%s\".\n",
                   opencl_platform_params[i].key, platform_name);
            return AVERROR_UNKNOWN;
        }
        if (!FUNC4(str, param->value)) {
            FUNC3(hwdev, AV_LOG_DEBUG, "%s does not match (\"%s\").\n",
                   param->key, str);
            ret = 1;
        }
        FUNC2(str);
    }

    return ret;
}