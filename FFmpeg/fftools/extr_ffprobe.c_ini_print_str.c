
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
 char* ini_escape_str (int *,char const*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void ini_print_str(WriterContext *wctx, const char *key, const char *value)
{
    AVBPrint buf;

    av_bprint_init(&buf, 1, AV_BPRINT_SIZE_UNLIMITED);
    printf("%s=", ini_escape_str(&buf, key));
    av_bprint_clear(&buf);
    printf("%s\n", ini_escape_str(&buf, value));
    av_bprint_finalize(&buf, ((void*)0));
}
