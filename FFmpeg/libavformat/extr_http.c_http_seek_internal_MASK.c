#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ is_streamed; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_7__ {scalar_t__ off; scalar_t__ filesize; scalar_t__ end_off; TYPE_1__* hd; int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * buf_end; int /*<<< orphan*/ * buf_ptr; } ;
typedef  TYPE_2__ HTTPContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int AVSEEK_SIZE ; 
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOSYS ; 
 int SEEK_CUR ; 
 int SEEK_END ; 
 int SEEK_SET ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int64_t FUNC5(URLContext *h, int64_t off, int whence, int force_reconnect)
{
    HTTPContext *s = h->priv_data;
    URLContext *old_hd = s->hd;
    uint64_t old_off = s->off;
    uint8_t old_buf[BUFFER_SIZE];
    int old_buf_size, ret;
    AVDictionary *options = NULL;

    if (whence == AVSEEK_SIZE)
        return s->filesize;
    else if (!force_reconnect &&
             ((whence == SEEK_CUR && off == 0) ||
              (whence == SEEK_SET && off == s->off)))
        return s->off;
    else if ((s->filesize == UINT64_MAX && whence == SEEK_END))
        return FUNC0(ENOSYS);

    if (whence == SEEK_CUR)
        off += s->off;
    else if (whence == SEEK_END)
        off += s->filesize;
    else if (whence != SEEK_SET)
        return FUNC0(EINVAL);
    if (off < 0)
        return FUNC0(EINVAL);
    s->off = off;

    if (s->off && h->is_streamed)
        return FUNC0(ENOSYS);

    /* do not try to make a new connection if seeking past the end of the file */
    if (s->end_off || s->filesize != UINT64_MAX) {
        uint64_t end_pos = s->end_off ? s->end_off : s->filesize;
        if (s->off >= end_pos)
            return s->off;
    }

    /* we save the old context in case the seek fails */
    old_buf_size = s->buf_end - s->buf_ptr;
    FUNC4(old_buf, s->buf_ptr, old_buf_size);
    s->hd = NULL;

    /* if it fails, continue on old connection */
    if ((ret = FUNC3(h, &options)) < 0) {
        FUNC1(&options);
        FUNC4(s->buffer, old_buf, old_buf_size);
        s->buf_ptr = s->buffer;
        s->buf_end = s->buffer + old_buf_size;
        s->hd      = old_hd;
        s->off     = old_off;
        return ret;
    }
    FUNC1(&options);
    FUNC2(old_hd);
    return off;
}