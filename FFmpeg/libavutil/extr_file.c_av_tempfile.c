
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avpriv_tempfile (char const*,char**,int,void*) ;

int av_tempfile(const char *prefix, char **filename, int log_offset, void *log_ctx) {
    return avpriv_tempfile(prefix, filename, log_offset, log_ctx);
}
