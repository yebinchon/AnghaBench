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
typedef  int /*<<< orphan*/  uint16_t ;
struct data_mbuf {int /*<<< orphan*/  outlen; int /*<<< orphan*/ * outbuf; int /*<<< orphan*/  attr_handle; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct data_mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 struct data_mbuf* FUNC2 (int,int) ; 
 int /*<<< orphan*/  data_mbuf_list ; 
 struct data_mbuf* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node ; 

__attribute__((used)) static int FUNC5(uint16_t attr_handle, ssize_t outlen,
        uint8_t *outbuf)
{
    struct data_mbuf *attr_mbuf = FUNC3(attr_handle);
    if (!attr_mbuf) {
        attr_mbuf = FUNC2(1, sizeof(struct data_mbuf));
        if (!attr_mbuf) {
            FUNC0(TAG, "Failed to allocate memory for storing outbuf and outlen");
            return ESP_ERR_NO_MEM;
        }
        FUNC1(&data_mbuf_list, attr_mbuf, node);
        attr_mbuf->attr_handle = attr_handle;
    } else {
        FUNC4(attr_mbuf->outbuf);
    }
    attr_mbuf->outbuf = outbuf;
    attr_mbuf->outlen = outlen;
    return ESP_OK;
}