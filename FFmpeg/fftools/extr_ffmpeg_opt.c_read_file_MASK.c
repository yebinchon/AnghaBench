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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint8_t *FUNC8(const char *filename)
{
    AVIOContext *pb      = NULL;
    AVIOContext *dyn_buf = NULL;
    int ret = FUNC3(&pb, filename, AVIO_FLAG_READ);
    uint8_t buf[1024], *str;

    if (ret < 0) {
        FUNC0(NULL, AV_LOG_ERROR, "Error opening file %s.\n", filename);
        return NULL;
    }

    ret = FUNC4(&dyn_buf);
    if (ret < 0) {
        FUNC2(&pb);
        return NULL;
    }
    while ((ret = FUNC5(pb, buf, sizeof(buf))) > 0)
        FUNC7(dyn_buf, buf, ret);
    FUNC6(dyn_buf, 0);
    FUNC2(&pb);

    ret = FUNC1(dyn_buf, &str);
    if (ret < 0)
        return NULL;
    return str;
}