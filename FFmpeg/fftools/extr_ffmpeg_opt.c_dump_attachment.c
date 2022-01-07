
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* value; } ;
struct TYPE_7__ {TYPE_1__* codecpar; int index; int metadata; } ;
struct TYPE_6__ {int extradata_size; int extradata; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVDictionaryEntry ;


 int AVIO_FLAG_WRITE ;
 int AV_LOG_FATAL ;
 int AV_LOG_WARNING ;
 int assert_file_overwrite (char const*) ;
 TYPE_3__* av_dict_get (int ,char*,int *,int ) ;
 int av_log (int *,int ,char*,char const*,...) ;
 int avio_close (int *) ;
 int avio_flush (int *) ;
 int avio_open2 (int **,char const*,int ,int *,int *) ;
 int avio_write (int *,int ,int ) ;
 int exit_program (int) ;
 int int_cb ;
 scalar_t__ nb_input_files ;

__attribute__((used)) static void dump_attachment(AVStream *st, const char *filename)
{
    int ret;
    AVIOContext *out = ((void*)0);
    AVDictionaryEntry *e;

    if (!st->codecpar->extradata_size) {
        av_log(((void*)0), AV_LOG_WARNING, "No extradata to dump in stream #%d:%d.\n",
               nb_input_files - 1, st->index);
        return;
    }
    if (!*filename && (e = av_dict_get(st->metadata, "filename", ((void*)0), 0)))
        filename = e->value;
    if (!*filename) {
        av_log(((void*)0), AV_LOG_FATAL, "No filename specified and no 'filename' tag"
               "in stream #%d:%d.\n", nb_input_files - 1, st->index);
        exit_program(1);
    }

    assert_file_overwrite(filename);

    if ((ret = avio_open2(&out, filename, AVIO_FLAG_WRITE, &int_cb, ((void*)0))) < 0) {
        av_log(((void*)0), AV_LOG_FATAL, "Could not open file %s for writing.\n",
               filename);
        exit_program(1);
    }

    avio_write(out, st->codecpar->extradata, st->codecpar->extradata_size);
    avio_flush(out);
    avio_close(out);
}
