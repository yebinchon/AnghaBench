
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* ctx; } ;
struct TYPE_6__ {char* url; TYPE_1__* iformat; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_3__ InputFile ;


 int AVFMT_NOFILE ;
 int AV_LOG_FATAL ;
 int AV_LOG_WARNING ;
 int SIGINT ;
 int SIG_DFL ;
 int av_log (int *,int ,char*,...) ;
 scalar_t__ avio_check (char const*,int ) ;
 char* avio_find_protocol_name (char const*) ;
 int exit_program (int) ;
 int fflush (int ) ;
 scalar_t__ file_overwrite ;
 int fprintf (int ,char*,...) ;
 TYPE_3__** input_files ;
 int nb_input_files ;
 scalar_t__ no_file_overwrite ;
 int read_yesno () ;
 int signal (int ,int ) ;
 int stderr ;
 scalar_t__ stdin_interaction ;
 int strcmp (char const*,char*) ;
 int term_exit () ;
 int term_init () ;

__attribute__((used)) static void assert_file_overwrite(const char *filename)
{
    const char *proto_name = avio_find_protocol_name(filename);

    if (file_overwrite && no_file_overwrite) {
        fprintf(stderr, "Error, both -y and -n supplied. Exiting.\n");
        exit_program(1);
    }

    if (!file_overwrite) {
        if (proto_name && !strcmp(proto_name, "file") && avio_check(filename, 0) == 0) {
            if (stdin_interaction && !no_file_overwrite) {
                fprintf(stderr,"File '%s' already exists. Overwrite? [y/N] ", filename);
                fflush(stderr);
                term_exit();
                signal(SIGINT, SIG_DFL);
                if (!read_yesno()) {
                    av_log(((void*)0), AV_LOG_FATAL, "Not overwriting - exiting\n");
                    exit_program(1);
                }
                term_init();
            }
            else {
                av_log(((void*)0), AV_LOG_FATAL, "File '%s' already exists. Exiting.\n", filename);
                exit_program(1);
            }
        }
    }

    if (proto_name && !strcmp(proto_name, "file")) {
        for (int i = 0; i < nb_input_files; i++) {
             InputFile *file = input_files[i];
             if (file->ctx->iformat->flags & AVFMT_NOFILE)
                 continue;
             if (!strcmp(filename, file->ctx->url)) {
                 av_log(((void*)0), AV_LOG_FATAL, "Output %s same as Input #%d - exiting\n", filename, i);
                 av_log(((void*)0), AV_LOG_WARNING, "FFmpeg cannot edit existing files in-place.\n");
                 exit_program(1);
             }
        }
    }
}
