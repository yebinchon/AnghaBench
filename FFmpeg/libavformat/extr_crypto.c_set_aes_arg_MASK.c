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
typedef  int /*<<< orphan*/  URLContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int BLOCKSIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(URLContext *h, uint8_t **buf, int *buf_len,
                       uint8_t *default_buf, int default_buf_len,
                       const char *desc)
{
    if (!*buf_len) {
        if (!default_buf_len) {
            FUNC1(h, AV_LOG_ERROR, "%s not set\n", desc);
            return FUNC0(EINVAL);
        } else if (default_buf_len != BLOCKSIZE) {
            FUNC1(h, AV_LOG_ERROR,
                   "invalid %s size (%d bytes, block size is %d)\n",
                   desc, default_buf_len, BLOCKSIZE);
            return FUNC0(EINVAL);
        }
        *buf = FUNC2(default_buf, default_buf_len);
        if (!*buf)
            return FUNC0(ENOMEM);
        *buf_len = default_buf_len;
    } else if (*buf_len != BLOCKSIZE) {
        FUNC1(h, AV_LOG_ERROR,
               "invalid %s size (%d bytes, block size is %d)\n",
               desc, *buf_len, BLOCKSIZE);
        return FUNC0(EINVAL);
    }
    return 0;
}