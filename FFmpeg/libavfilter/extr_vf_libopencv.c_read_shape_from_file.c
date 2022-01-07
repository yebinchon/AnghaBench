
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int FFMAX (int,int) ;
 int INT_MAX ;
 int SIZE_MAX ;
 int av_file_map (char const*,char**,size_t*,int ,void*) ;
 int av_file_unmap (char*,size_t) ;
 int av_free (char*) ;
 int av_isgraph (int ) ;
 int av_log (void*,int ,char*,...) ;
 char* av_malloc (int) ;
 int* av_mallocz_array (int,int) ;

__attribute__((used)) static int read_shape_from_file(int *cols, int *rows, int **values, const char *filename,
                                void *log_ctx)
{
    uint8_t *buf, *p, *pend;
    size_t size;
    int ret, i, j, w;

    if ((ret = av_file_map(filename, &buf, &size, 0, log_ctx)) < 0)
        return ret;


    w = 0;
    for (i = 0; i < size; i++) {
        if (buf[i] == '\n') {
            if (*rows == INT_MAX) {
                av_log(log_ctx, AV_LOG_ERROR, "Overflow on the number of rows in the file\n");
                ret = AVERROR_INVALIDDATA;
                goto end;
            }
            ++(*rows);
            *cols = FFMAX(*cols, w);
            w = 0;
        } else if (w == INT_MAX) {
            av_log(log_ctx, AV_LOG_ERROR, "Overflow on the number of columns in the file\n");
            return AVERROR_INVALIDDATA;
        }
        w++;
    }
    if (*rows > (SIZE_MAX / sizeof(int) / *cols)) {
        av_log(log_ctx, AV_LOG_ERROR, "File with size %dx%d is too big\n",
               *rows, *cols);
        ret = AVERROR_INVALIDDATA;
        goto end;
    }
    if (!(*values = av_mallocz_array(sizeof(int) * *rows, *cols))) {
        ret = AVERROR(ENOMEM);
        goto end;
    }


    p = buf;
    pend = buf + size-1;
    for (i = 0; i < *rows; i++) {
        for (j = 0;; j++) {
            if (p > pend || *p == '\n') {
                p++;
                break;
            } else
                (*values)[*cols*i + j] = !!av_isgraph(*(p++));
        }
    }

end:
    av_file_unmap(buf, size);
    return 0;
}
