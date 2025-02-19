
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {char* url; TYPE_2__* priv_data; } ;
struct TYPE_11__ {scalar_t__ safe; unsigned int nb_files; TYPE_1__* files; } ;
struct TYPE_10__ {char* url; void* user_duration; void* outpoint; void* inpoint; void* next_dts; void* duration; void* start_time; } ;
typedef TYPE_1__ ConcatFile ;
typedef TYPE_2__ ConcatContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 void* AV_NOPTS_VALUE ;
 int ENOMEM ;
 int EPERM ;
 int FAIL (int ) ;
 size_t FFMAX (unsigned int,int) ;
 int SIZE_MAX ;
 int av_free (char*) ;
 int av_freep (char**) ;
 int av_log (TYPE_3__*,int ,char*,char*) ;
 char* av_malloc (size_t) ;
 TYPE_1__* av_realloc (TYPE_1__*,size_t) ;
 char* avio_find_protocol_name (char*) ;
 int ff_make_absolute_url (char*,size_t,char*,char*) ;
 int memcmp (char*,char const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int safe_filename (char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int add_file(AVFormatContext *avf, char *filename, ConcatFile **rfile,
                    unsigned *nb_files_alloc)
{
    ConcatContext *cat = avf->priv_data;
    ConcatFile *file;
    char *url = ((void*)0);
    const char *proto;
    size_t url_len, proto_len;
    int ret;

    if (cat->safe > 0 && !safe_filename(filename)) {
        av_log(avf, AV_LOG_ERROR, "Unsafe file name '%s'\n", filename);
        FAIL(AVERROR(EPERM));
    }

    proto = avio_find_protocol_name(filename);
    proto_len = proto ? strlen(proto) : 0;
    if (proto && !memcmp(filename, proto, proto_len) &&
        (filename[proto_len] == ':' || filename[proto_len] == ',')) {
        url = filename;
        filename = ((void*)0);
    } else {
        url_len = strlen(avf->url) + strlen(filename) + 16;
        if (!(url = av_malloc(url_len)))
            FAIL(AVERROR(ENOMEM));
        ff_make_absolute_url(url, url_len, avf->url, filename);
        av_freep(&filename);
    }

    if (cat->nb_files >= *nb_files_alloc) {
        size_t n = FFMAX(*nb_files_alloc * 2, 16);
        ConcatFile *new_files;
        if (n <= cat->nb_files || n > SIZE_MAX / sizeof(*cat->files) ||
            !(new_files = av_realloc(cat->files, n * sizeof(*cat->files))))
            FAIL(AVERROR(ENOMEM));
        cat->files = new_files;
        *nb_files_alloc = n;
    }

    file = &cat->files[cat->nb_files++];
    memset(file, 0, sizeof(*file));
    *rfile = file;

    file->url = url;
    file->start_time = AV_NOPTS_VALUE;
    file->duration = AV_NOPTS_VALUE;
    file->next_dts = AV_NOPTS_VALUE;
    file->inpoint = AV_NOPTS_VALUE;
    file->outpoint = AV_NOPTS_VALUE;
    file->user_duration = AV_NOPTS_VALUE;

    return 0;

fail:
    av_free(url);
    av_free(filename);
    return ret;
}
