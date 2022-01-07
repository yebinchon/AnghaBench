
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ is_streamed; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {scalar_t__ off; scalar_t__ filesize; scalar_t__ end_off; TYPE_1__* hd; int * buffer; int * buf_end; int * buf_ptr; } ;
typedef TYPE_2__ HTTPContext ;
typedef int AVDictionary ;


 scalar_t__ AVERROR (int ) ;
 int AVSEEK_SIZE ;
 int BUFFER_SIZE ;
 int EINVAL ;
 int ENOSYS ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ UINT64_MAX ;
 int av_dict_free (int **) ;
 int ffurl_close (TYPE_1__*) ;
 int http_open_cnx (TYPE_1__*,int **) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int64_t http_seek_internal(URLContext *h, int64_t off, int whence, int force_reconnect)
{
    HTTPContext *s = h->priv_data;
    URLContext *old_hd = s->hd;
    uint64_t old_off = s->off;
    uint8_t old_buf[BUFFER_SIZE];
    int old_buf_size, ret;
    AVDictionary *options = ((void*)0);

    if (whence == AVSEEK_SIZE)
        return s->filesize;
    else if (!force_reconnect &&
             ((whence == SEEK_CUR && off == 0) ||
              (whence == SEEK_SET && off == s->off)))
        return s->off;
    else if ((s->filesize == UINT64_MAX && whence == SEEK_END))
        return AVERROR(ENOSYS);

    if (whence == SEEK_CUR)
        off += s->off;
    else if (whence == SEEK_END)
        off += s->filesize;
    else if (whence != SEEK_SET)
        return AVERROR(EINVAL);
    if (off < 0)
        return AVERROR(EINVAL);
    s->off = off;

    if (s->off && h->is_streamed)
        return AVERROR(ENOSYS);


    if (s->end_off || s->filesize != UINT64_MAX) {
        uint64_t end_pos = s->end_off ? s->end_off : s->filesize;
        if (s->off >= end_pos)
            return s->off;
    }


    old_buf_size = s->buf_end - s->buf_ptr;
    memcpy(old_buf, s->buf_ptr, old_buf_size);
    s->hd = ((void*)0);


    if ((ret = http_open_cnx(h, &options)) < 0) {
        av_dict_free(&options);
        memcpy(s->buffer, old_buf, old_buf_size);
        s->buf_ptr = s->buffer;
        s->buf_end = s->buffer + old_buf_size;
        s->hd = old_hd;
        s->off = old_off;
        return ret;
    }
    av_dict_free(&options);
    ffurl_close(old_hd);
    return off;
}
