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
typedef  unsigned char uint8_t ;
struct oggvorbis_private {int* len; int /*<<< orphan*/ * packet; } ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (unsigned char**,scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,char,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *as,
                                struct oggvorbis_private *priv,
                                uint8_t **buf)
{
    int i, offset, len, err;
    int buf_len;
    unsigned char *ptr;

    len = priv->len[0] + priv->len[1] + priv->len[2];
    buf_len = len + len / 255 + 64;

    if (*buf)
        return AVERROR_INVALIDDATA;

    ptr = *buf = FUNC2(NULL, buf_len);
    if (!ptr)
        return FUNC0(ENOMEM);
    FUNC6(*buf, '\0', buf_len);

    ptr[0]  = 2;
    offset  = 1;
    offset += FUNC4(&ptr[offset], priv->len[0]);
    offset += FUNC4(&ptr[offset], priv->len[1]);
    for (i = 0; i < 3; i++) {
        FUNC5(&ptr[offset], priv->packet[i], priv->len[i]);
        offset += priv->len[i];
        FUNC1(&priv->packet[i]);
    }
    if ((err = FUNC3(buf, offset + AV_INPUT_BUFFER_PADDING_SIZE)) < 0)
        return err;
    return offset;
}