
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int string_validation_utf8_flags; } ;
typedef TYPE_1__ WriterContext ;
typedef int Writer ;
struct TYPE_15__ {int entries_to_show; } ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_SKIP_REPEATED ;
 int AV_UTF8_FLAG_EXCLUDE_XML_INVALID_CONTROL_CODES ;
 int CHAPTERS ;
 int CHAPTER_TAGS ;
 int EINVAL ;
 int ENOMEM ;
 int ERROR ;
 int FF_ARRAY_ELEMS (TYPE_5__*) ;
 int FORMAT ;
 int FORMAT_TAGS ;
 int FRAMES ;
 int FRAME_TAGS ;
 int LIBRARY_VERSIONS ;
 int PACKETS ;
 int PACKET_TAGS ;
 int PIXEL_FORMATS ;
 int PIXEL_FORMAT_COMPONENTS ;
 int PIXEL_FORMAT_FLAGS ;
 int PROGRAMS ;
 int PROGRAM_STREAM_DISPOSITION ;
 int PROGRAM_STREAM_TAGS ;
 int PROGRAM_TAGS ;
 int PROGRAM_VERSION ;
 int SECTION_ID_ROOT ;
 int SET_DO_SHOW (int ,int ) ;
 int STREAMS ;
 int STREAM_DISPOSITION ;
 int STREAM_TAGS ;
 int av_dict_free (int *) ;
 int av_freep (scalar_t__*) ;
 int av_hash_alloc (int *,char*) ;
 int av_hash_freep (int *) ;
 char* av_hash_names (int) ;
 int av_log (int *,int ,char*,...) ;
 int av_log_set_callback (int ) ;
 int av_log_set_flags (int ) ;
 scalar_t__ av_strdup (char*) ;
 char* av_strtok (scalar_t__,char*,char**) ;
 int avdevice_register_all () ;
 int avformat_network_deinit () ;
 int avformat_network_init () ;
 int chapter_tags ;
 int chapters ;
 scalar_t__ do_bitexact ;
 scalar_t__ do_show_chapters ;
 scalar_t__ do_show_error ;
 scalar_t__ do_show_format ;
 scalar_t__ do_show_library_versions ;
 scalar_t__ do_show_log ;
 scalar_t__ do_show_packets ;
 scalar_t__ do_show_pixel_formats ;
 scalar_t__ do_show_program_version ;
 scalar_t__ do_show_programs ;
 scalar_t__ do_show_streams ;
 int error ;
 int ffprobe_cleanup ;
 int ffprobe_show_library_versions (TYPE_1__*) ;
 int ffprobe_show_pixel_formats (TYPE_1__*) ;
 int ffprobe_show_program_version (TYPE_1__*) ;
 int format ;
 int format_tags ;
 int frame_tags ;
 int frames ;
 int hash ;
 int init_dynload () ;
 int init_opts () ;
 scalar_t__ input_filename ;
 int library_versions ;
 int log_callback ;
 int log_mutex ;
 int opt_input_file ;
 int options ;
 int packet_tags ;
 int packets ;
 int parse_loglevel (int,char**,int ) ;
 int parse_options (int *,int,char**,int ,int ) ;
 int pixel_format_components ;
 int pixel_format_flags ;
 int pixel_formats ;
 scalar_t__ print_format ;
 int probe_file (TYPE_1__*,scalar_t__) ;
 char* program_name ;
 int program_tags ;
 int program_version ;
 int programs ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ read_intervals ;
 int real_options ;
 int register_exit (int ) ;
 TYPE_5__* sections ;
 int show_banner (int,char**,int ) ;
 char* show_data_hash ;
 int show_error (TYPE_1__*,int) ;
 int show_usage () ;
 int stream_disposition ;
 int stream_tags ;
 int streams ;
 int uninit_opts () ;
 int writer_close (TYPE_1__**) ;
 int * writer_get_by_name (char*) ;
 int writer_open (TYPE_1__**,int const*,char*,TYPE_5__*,int) ;
 int writer_print_section_footer (TYPE_1__*) ;
 int writer_print_section_header (TYPE_1__*,int ) ;
 int writer_register_all () ;
 int const xml_writer ;

int main(int argc, char **argv)
{
    const Writer *w;
    WriterContext *wctx;
    char *buf;
    char *w_name = ((void*)0), *w_args = ((void*)0);
    int ret, i;

    init_dynload();







    av_log_set_flags(AV_LOG_SKIP_REPEATED);
    register_exit(ffprobe_cleanup);

    options = real_options;
    parse_loglevel(argc, argv, options);
    avformat_network_init();
    init_opts();




    show_banner(argc, argv, options);
    parse_options(((void*)0), argc, argv, options, opt_input_file);

    if (do_show_log)
        av_log_set_callback(log_callback);


    SET_DO_SHOW(CHAPTERS, chapters);
    SET_DO_SHOW(ERROR, error);
    SET_DO_SHOW(FORMAT, format);
    SET_DO_SHOW(FRAMES, frames);
    SET_DO_SHOW(LIBRARY_VERSIONS, library_versions);
    SET_DO_SHOW(PACKETS, packets);
    SET_DO_SHOW(PIXEL_FORMATS, pixel_formats);
    SET_DO_SHOW(PIXEL_FORMAT_FLAGS, pixel_format_flags);
    SET_DO_SHOW(PIXEL_FORMAT_COMPONENTS, pixel_format_components);
    SET_DO_SHOW(PROGRAM_VERSION, program_version);
    SET_DO_SHOW(PROGRAMS, programs);
    SET_DO_SHOW(STREAMS, streams);
    SET_DO_SHOW(STREAM_DISPOSITION, stream_disposition);
    SET_DO_SHOW(PROGRAM_STREAM_DISPOSITION, stream_disposition);

    SET_DO_SHOW(CHAPTER_TAGS, chapter_tags);
    SET_DO_SHOW(FORMAT_TAGS, format_tags);
    SET_DO_SHOW(FRAME_TAGS, frame_tags);
    SET_DO_SHOW(PROGRAM_TAGS, program_tags);
    SET_DO_SHOW(STREAM_TAGS, stream_tags);
    SET_DO_SHOW(PROGRAM_STREAM_TAGS, stream_tags);
    SET_DO_SHOW(PACKET_TAGS, packet_tags);

    if (do_bitexact && (do_show_program_version || do_show_library_versions)) {
        av_log(((void*)0), AV_LOG_ERROR,
               "-bitexact and -show_program_version or -show_library_versions "
               "options are incompatible\n");
        ret = AVERROR(EINVAL);
        goto end;
    }

    writer_register_all();

    if (!print_format)
        print_format = av_strdup("default");
    if (!print_format) {
        ret = AVERROR(ENOMEM);
        goto end;
    }
    w_name = av_strtok(print_format, "=", &buf);
    if (!w_name) {
        av_log(((void*)0), AV_LOG_ERROR,
               "No name specified for the output format\n");
        ret = AVERROR(EINVAL);
        goto end;
    }
    w_args = buf;

    if (show_data_hash) {
        if ((ret = av_hash_alloc(&hash, show_data_hash)) < 0) {
            if (ret == AVERROR(EINVAL)) {
                const char *n;
                av_log(((void*)0), AV_LOG_ERROR,
                       "Unknown hash algorithm '%s'\nKnown algorithms:",
                       show_data_hash);
                for (i = 0; (n = av_hash_names(i)); i++)
                    av_log(((void*)0), AV_LOG_ERROR, " %s", n);
                av_log(((void*)0), AV_LOG_ERROR, "\n");
            }
            goto end;
        }
    }

    w = writer_get_by_name(w_name);
    if (!w) {
        av_log(((void*)0), AV_LOG_ERROR, "Unknown output format with name '%s'\n", w_name);
        ret = AVERROR(EINVAL);
        goto end;
    }

    if ((ret = writer_open(&wctx, w, w_args,
                           sections, FF_ARRAY_ELEMS(sections))) >= 0) {
        if (w == &xml_writer)
            wctx->string_validation_utf8_flags |= AV_UTF8_FLAG_EXCLUDE_XML_INVALID_CONTROL_CODES;

        writer_print_section_header(wctx, SECTION_ID_ROOT);

        if (do_show_program_version)
            ffprobe_show_program_version(wctx);
        if (do_show_library_versions)
            ffprobe_show_library_versions(wctx);
        if (do_show_pixel_formats)
            ffprobe_show_pixel_formats(wctx);

        if (!input_filename &&
            ((do_show_format || do_show_programs || do_show_streams || do_show_chapters || do_show_packets || do_show_error) ||
             (!do_show_program_version && !do_show_library_versions && !do_show_pixel_formats))) {
            show_usage();
            av_log(((void*)0), AV_LOG_ERROR, "You have to specify one input file.\n");
            av_log(((void*)0), AV_LOG_ERROR, "Use -h to get full help or, even better, run 'man %s'.\n", program_name);
            ret = AVERROR(EINVAL);
        } else if (input_filename) {
            ret = probe_file(wctx, input_filename);
            if (ret < 0 && do_show_error)
                show_error(wctx, ret);
        }

        writer_print_section_footer(wctx);
        writer_close(&wctx);
    }

end:
    av_freep(&print_format);
    av_freep(&read_intervals);
    av_hash_freep(&hash);

    uninit_opts();
    for (i = 0; i < FF_ARRAY_ELEMS(sections); i++)
        av_dict_free(&(sections[i].entries_to_show));

    avformat_network_deinit();

    return ret < 0;
}
