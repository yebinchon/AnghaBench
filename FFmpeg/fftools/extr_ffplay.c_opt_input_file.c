
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_FATAL ;
 int av_log (int *,int ,char*,char const*,char const*) ;
 int exit (int) ;
 char const* input_filename ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void opt_input_file(void *optctx, const char *filename)
{
    if (input_filename) {
        av_log(((void*)0), AV_LOG_FATAL,
               "Argument '%s' provided as input filename, but '%s' was already specified.\n",
                filename, input_filename);
        exit(1);
    }
    if (!strcmp(filename, "-"))
        filename = "pipe:";
    input_filename = filename;
}
