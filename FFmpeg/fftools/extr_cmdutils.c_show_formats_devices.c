
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* name; char* long_name; int priv_class; } ;
struct TYPE_5__ {char* name; char* long_name; int priv_class; } ;
typedef TYPE_1__ AVOutputFormat ;
typedef TYPE_2__ AVInputFormat ;


 int SHOW_DEMUXERS ;
 int SHOW_MUXERS ;
 TYPE_2__* av_demuxer_iterate (void**) ;
 TYPE_1__* av_muxer_iterate (void**) ;
 int is_device (int ) ;
 int printf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int show_formats_devices(void *optctx, const char *opt, const char *arg, int device_only, int muxdemuxers)
{
    void *ifmt_opaque = ((void*)0);
    const AVInputFormat *ifmt = ((void*)0);
    void *ofmt_opaque = ((void*)0);
    const AVOutputFormat *ofmt = ((void*)0);
    const char *last_name;
    int is_dev;

    printf("%s\n"
           " D. = Demuxing supported\n"
           " .E = Muxing supported\n"
           " --\n", device_only ? "Devices:" : "File formats:");
    last_name = "000";
    for (;;) {
        int decode = 0;
        int encode = 0;
        const char *name = ((void*)0);
        const char *long_name = ((void*)0);

        if (muxdemuxers !=SHOW_DEMUXERS) {
            ofmt_opaque = ((void*)0);
            while ((ofmt = av_muxer_iterate(&ofmt_opaque))) {
                is_dev = is_device(ofmt->priv_class);
                if (!is_dev && device_only)
                    continue;
                if ((!name || strcmp(ofmt->name, name) < 0) &&
                    strcmp(ofmt->name, last_name) > 0) {
                    name = ofmt->name;
                    long_name = ofmt->long_name;
                    encode = 1;
                }
            }
        }
        if (muxdemuxers != SHOW_MUXERS) {
            ifmt_opaque = ((void*)0);
            while ((ifmt = av_demuxer_iterate(&ifmt_opaque))) {
                is_dev = is_device(ifmt->priv_class);
                if (!is_dev && device_only)
                    continue;
                if ((!name || strcmp(ifmt->name, name) < 0) &&
                    strcmp(ifmt->name, last_name) > 0) {
                    name = ifmt->name;
                    long_name = ifmt->long_name;
                    encode = 0;
                }
                if (name && strcmp(ifmt->name, name) == 0)
                    decode = 1;
            }
        }
        if (!name)
            break;
        last_name = name;

        printf(" %s%s %-15s %s\n",
               decode ? "D" : " ",
               encode ? "E" : " ",
               name,
            long_name ? long_name:" ");
    }
    return 0;
}
