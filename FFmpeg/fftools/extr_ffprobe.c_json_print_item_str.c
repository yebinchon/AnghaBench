
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WriterContext ;
typedef int AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int av_bprint_clear (int *) ;
 int av_bprint_finalize (int *,int *) ;
 int av_bprint_init (int *,int,int ) ;
 char* json_escape_str (int *,char const*,int *) ;
 int printf (char*,char*) ;

__attribute__((used)) static inline void json_print_item_str(WriterContext *wctx,
                                       const char *key, const char *value)
{
    AVBPrint buf;

    av_bprint_init(&buf, 1, AV_BPRINT_SIZE_UNLIMITED);
    printf("\"%s\":", json_escape_str(&buf, key, wctx));
    av_bprint_clear(&buf);
    printf(" \"%s\"", json_escape_str(&buf, value, wctx));
    av_bprint_finalize(&buf, ((void*)0));
}
