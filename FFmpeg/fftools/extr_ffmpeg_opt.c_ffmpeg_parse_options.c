
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int octx ;
typedef int error ;
struct TYPE_5__ {int * groups; int global_opts; } ;
typedef TYPE_1__ OptionParseContext ;


 int AV_LOG_FATAL ;
 int FF_ARRAY_ELEMS (int ) ;
 size_t GROUP_INFILE ;
 size_t GROUP_OUTFILE ;
 int av_log (int *,int ,char*,...) ;
 int av_strerror (int,int *,int) ;
 int check_filter_outputs () ;
 int groups ;
 int init_complex_filters () ;
 int memset (TYPE_1__*,int ,int) ;
 int open_files (int *,char*,int ) ;
 int open_input_file ;
 int open_output_file ;
 int options ;
 int parse_optgroup (int *,int *) ;
 int split_commandline (TYPE_1__*,int,char**,int ,int ,int ) ;
 int term_init () ;
 int uninit_parse_context (TYPE_1__*) ;

int ffmpeg_parse_options(int argc, char **argv)
{
    OptionParseContext octx;
    uint8_t error[128];
    int ret;

    memset(&octx, 0, sizeof(octx));


    ret = split_commandline(&octx, argc, argv, options, groups,
                            FF_ARRAY_ELEMS(groups));
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_FATAL, "Error splitting the argument list: ");
        goto fail;
    }


    ret = parse_optgroup(((void*)0), &octx.global_opts);
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_FATAL, "Error parsing global options: ");
        goto fail;
    }


    term_init();


    ret = open_files(&octx.groups[GROUP_INFILE], "input", open_input_file);
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_FATAL, "Error opening input files: ");
        goto fail;
    }


    ret = init_complex_filters();
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_FATAL, "Error initializing complex filters.\n");
        goto fail;
    }


    ret = open_files(&octx.groups[GROUP_OUTFILE], "output", open_output_file);
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_FATAL, "Error opening output files: ");
        goto fail;
    }

    check_filter_outputs();

fail:
    uninit_parse_context(&octx);
    if (ret < 0) {
        av_strerror(ret, error, sizeof(error));
        av_log(((void*)0), AV_LOG_FATAL, "%s\n", error);
    }
    return ret;
}
