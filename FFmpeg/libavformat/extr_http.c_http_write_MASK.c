#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  temp ;
typedef  int /*<<< orphan*/  crlf ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_5__ {int /*<<< orphan*/  hd; int /*<<< orphan*/  chunked_post; } ;
typedef  TYPE_2__ HTTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(URLContext *h, const uint8_t *buf, int size)
{
    char temp[11] = "";  /* 32-bit hex + CRLF + nul */
    int ret;
    char crlf[] = "\r\n";
    HTTPContext *s = h->priv_data;

    if (!s->chunked_post) {
        /* non-chunked data is sent without any special encoding */
        return FUNC0(s->hd, buf, size);
    }

    /* silently ignore zero-size data since chunk encoding that would
     * signal EOF */
    if (size > 0) {
        /* upload data using chunked encoding */
        FUNC1(temp, sizeof(temp), "%x\r\n", size);

        if ((ret = FUNC0(s->hd, temp, FUNC2(temp))) < 0 ||
            (ret = FUNC0(s->hd, buf, size)) < 0          ||
            (ret = FUNC0(s->hd, crlf, sizeof(crlf) - 1)) < 0)
            return ret;
    }
    return size;
}