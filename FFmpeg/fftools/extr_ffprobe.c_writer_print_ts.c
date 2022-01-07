
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int WriterContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int PRINT_STRING_OPT ;
 int writer_print_integer (int *,char const*,scalar_t__) ;
 int writer_print_string (int *,char const*,char*,int ) ;

__attribute__((used)) static void writer_print_ts(WriterContext *wctx, const char *key, int64_t ts, int is_duration)
{
    if ((!is_duration && ts == AV_NOPTS_VALUE) || (is_duration && ts == 0)) {
        writer_print_string(wctx, key, "N/A", PRINT_STRING_OPT);
    } else {
        writer_print_integer(wctx, key, ts);
    }
}
