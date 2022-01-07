
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
struct TYPE_10__ {int string_validation; int string_validation_replacement; int string_validation_utf8_flags; } ;
typedef TYPE_1__ WriterContext ;
struct TYPE_11__ {int str; } ;
typedef TYPE_2__ AVBPrint ;


 int AVERROR_INVALIDDATA ;
 int AV_BPRINT_SIZE_AUTOMATIC ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;

 int WRITER_STRING_VALIDATION_IGNORE ;

 int av_bprint_append_data (TYPE_2__*,char const*,int) ;
 int av_bprint_finalize (TYPE_2__*,char**) ;
 int av_bprint_init (TYPE_2__*,int ,int ) ;
 int av_bprintf (TYPE_2__*,char*,int ) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 scalar_t__ av_utf8_decode (int *,char const**,char const*,int ) ;
 int bprint_bytes (TYPE_2__*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int validate_string(WriterContext *wctx, char **dstp, const char *src)
{
    const uint8_t *p, *endp;
    AVBPrint dstbuf;
    int invalid_chars_nb = 0, ret = 0;

    av_bprint_init(&dstbuf, 0, AV_BPRINT_SIZE_UNLIMITED);

    endp = src + strlen(src);
    for (p = (uint8_t *)src; *p;) {
        uint32_t code;
        int invalid = 0;
        const uint8_t *p0 = p;

        if (av_utf8_decode(&code, &p, endp, wctx->string_validation_utf8_flags) < 0) {
            AVBPrint bp;
            av_bprint_init(&bp, 0, AV_BPRINT_SIZE_AUTOMATIC);
            bprint_bytes(&bp, p0, p-p0);
            av_log(wctx, AV_LOG_DEBUG,
                   "Invalid UTF-8 sequence %s found in string '%s'\n", bp.str, src);
            invalid = 1;
        }

        if (invalid) {
            invalid_chars_nb++;

            switch (wctx->string_validation) {
            case 129:
                av_log(wctx, AV_LOG_ERROR,
                       "Invalid UTF-8 sequence found in string '%s'\n", src);
                ret = AVERROR_INVALIDDATA;
                goto end;
                break;

            case 128:
                av_bprintf(&dstbuf, "%s", wctx->string_validation_replacement);
                break;
            }
        }

        if (!invalid || wctx->string_validation == WRITER_STRING_VALIDATION_IGNORE)
            av_bprint_append_data(&dstbuf, p0, p-p0);
    }

    if (invalid_chars_nb && wctx->string_validation == 128) {
        av_log(wctx, AV_LOG_WARNING,
               "%d invalid UTF-8 sequence(s) found in string '%s', replaced with '%s'\n",
               invalid_chars_nb, src, wctx->string_validation_replacement);
    }

end:
    av_bprint_finalize(&dstbuf, dstp);
    return ret;
}
