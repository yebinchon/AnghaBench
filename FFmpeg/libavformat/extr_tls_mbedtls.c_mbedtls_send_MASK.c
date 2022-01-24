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
struct TYPE_4__ {size_t max_packet_size; } ;
typedef  TYPE_1__ URLContext ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  MBEDTLS_ERR_SSL_WANT_WRITE ; 
 int FUNC0 (TYPE_1__*,unsigned char const*,size_t) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(void *ctx, const unsigned char *buf, size_t len)
{
    URLContext *h = (URLContext*) ctx;
    int ret = FUNC0(h, buf, len);
    if (ret >= 0)
        return ret;

    if (h->max_packet_size && len > h->max_packet_size)
        return MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL;

    return FUNC1(h, "ffurl_write", MBEDTLS_ERR_SSL_WANT_WRITE, ret);
}