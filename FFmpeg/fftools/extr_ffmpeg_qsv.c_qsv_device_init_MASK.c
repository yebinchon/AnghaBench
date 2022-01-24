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
struct TYPE_3__ {int /*<<< orphan*/  hwaccel_device; } ;
typedef  TYPE_1__ InputStream ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_HWDEVICE_TYPE_QSV ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ **,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hw_device_ctx ; 
 scalar_t__ qsv_device ; 

__attribute__((used)) static int FUNC4(InputStream *ist)
{
    int err;
    AVDictionary *dict = NULL;

    if (qsv_device) {
        err = FUNC1(&dict, "child_device", qsv_device, 0);
        if (err < 0)
            return err;
    }

    err = FUNC2(&hw_device_ctx, AV_HWDEVICE_TYPE_QSV,
                                 ist->hwaccel_device, dict, 0);
    if (err < 0) {
        FUNC3(NULL, AV_LOG_ERROR, "Error creating a QSV device\n");
        goto err_out;
    }

err_out:
    if (dict)
        FUNC0(&dict);

    return err;
}