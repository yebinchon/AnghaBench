
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,char const*,char const*) ;
 int exit_program (int) ;
 char const* input_filename ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void opt_input_file(void *optctx, const char *arg)
{
    if (input_filename) {
        av_log(((void*)0), AV_LOG_ERROR,
                "Argument '%s' provided as input filename, but '%s' was already specified.\n",
                arg, input_filename);
        exit_program(1);
    }
    if (!strcmp(arg, "-"))
        arg = "pipe:";
    input_filename = arg;
}
