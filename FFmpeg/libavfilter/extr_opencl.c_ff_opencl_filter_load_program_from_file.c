
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int av_freep (char**) ;
 int av_log (int *,int ,char*,char const*) ;
 int av_reallocp (char**,size_t) ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int ff_opencl_filter_load_program (int *,char const**,int) ;
 int * fopen (char const*,char*) ;
 size_t fread (char*,int,size_t,int *) ;
 int snprintf (char*,size_t,char*,char const*) ;

int ff_opencl_filter_load_program_from_file(AVFilterContext *avctx,
                                            const char *filename)
{
    FILE *file;
    char *src = ((void*)0);
    size_t pos, len, rb;
    const char *src_const;
    int err;

    file = fopen(filename, "r");
    if (!file) {
        av_log(avctx, AV_LOG_ERROR, "Unable to open program "
               "source file \"%s\".\n", filename);
        return AVERROR(ENOENT);
    }

    len = 1 << 16;
    pos = 0;

    err = av_reallocp(&src, len);
    if (err < 0)
        goto fail;

    err = snprintf(src, len, "#line 1 \"%s\"\n", filename);
    if (err < 0) {
        err = AVERROR(errno);
        goto fail;
    }
    if (err > len / 2) {
        err = AVERROR(EINVAL);
        goto fail;
    }
    pos = err;

    while (1) {
        rb = fread(src + pos, 1, len - pos - 1, file);
        if (rb == 0 && ferror(file)) {
            err = AVERROR(EIO);
            goto fail;
        }
        pos += rb;
        if (pos < len)
            break;
        len <<= 1;
        err = av_reallocp(&src, len);
        if (err < 0)
            goto fail;
    }
    src[pos] = 0;

    src_const = src;

    err = ff_opencl_filter_load_program(avctx, &src_const, 1);
fail:
    fclose(file);
    av_freep(&src);
    return err;
}
