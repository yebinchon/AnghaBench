
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int PutByteContext ;
typedef int H264ParamSets ;
typedef int GetByteContext ;


 int AVERROR (int ) ;
 int AV_EF_EXPLODE ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_WARNING ;
 int AV_WB16 (int const*,int) ;
 int ENOMEM ;
 int ERANGE ;
 int INT16_MAX ;
 int av_freep (int const**) ;
 int av_log (void*,int ,char*) ;
 int const* av_mallocz (int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_init (int *,int const*,int) ;
 int bytestream2_init_writer (int *,int const*,int) ;
 int bytestream2_peek_be24 (int *) ;
 int bytestream2_put_be24 (int *,int) ;
 int bytestream2_put_byte (int *,int ) ;
 int bytestream2_skip (int *,int) ;
 int bytestream2_tell_p (int *) ;
 int decode_extradata_ps (int const*,int,int *,int,void*) ;

__attribute__((used)) static int decode_extradata_ps_mp4(const uint8_t *buf, int buf_size, H264ParamSets *ps,
                                   int err_recognition, void *logctx)
{
    int ret;

    ret = decode_extradata_ps(buf, buf_size, ps, 1, logctx);
    if (ret < 0 && !(err_recognition & AV_EF_EXPLODE)) {
        GetByteContext gbc;
        PutByteContext pbc;
        uint8_t *escaped_buf;
        int escaped_buf_size;

        av_log(logctx, AV_LOG_WARNING,
               "SPS decoding failure, trying again after escaping the NAL\n");

        if (buf_size / 2 >= (INT16_MAX - AV_INPUT_BUFFER_PADDING_SIZE) / 3)
            return AVERROR(ERANGE);
        escaped_buf_size = buf_size * 3 / 2 + AV_INPUT_BUFFER_PADDING_SIZE;
        escaped_buf = av_mallocz(escaped_buf_size);
        if (!escaped_buf)
            return AVERROR(ENOMEM);

        bytestream2_init(&gbc, buf, buf_size);
        bytestream2_init_writer(&pbc, escaped_buf, escaped_buf_size);

        while (bytestream2_get_bytes_left(&gbc)) {
            if (bytestream2_get_bytes_left(&gbc) >= 3 &&
                bytestream2_peek_be24(&gbc) <= 3) {
                bytestream2_put_be24(&pbc, 3);
                bytestream2_skip(&gbc, 2);
            } else
                bytestream2_put_byte(&pbc, bytestream2_get_byte(&gbc));
        }

        escaped_buf_size = bytestream2_tell_p(&pbc);
        AV_WB16(escaped_buf, escaped_buf_size - 2);

        (void)decode_extradata_ps(escaped_buf, escaped_buf_size, ps, 1, logctx);

        av_freep(&escaped_buf);
    }

    return 0;
}
