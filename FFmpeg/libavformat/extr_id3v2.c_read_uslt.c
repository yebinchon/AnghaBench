
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int AVIOContext ;
typedef int AVFormatContext ;
typedef int AVDictionary ;


 int AV_LOG_ERROR ;
 char* av_asprintf (char*,char*,char*,char*) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_free (char*) ;
 int av_log (int *,int ,char*) ;
 int avio_r8 (int *) ;
 int avio_read (int *,char*,int) ;
 scalar_t__ decode_str (int *,int *,int,char**,int*) ;

__attribute__((used)) static void read_uslt(AVFormatContext *s, AVIOContext *pb, int taglen,
                      AVDictionary **metadata)
{
    uint8_t lang[4];
    uint8_t *descriptor = ((void*)0);
    uint8_t *text = ((void*)0);
    char *key = ((void*)0);
    int encoding;
    int ok = 0;

    if (taglen < 1)
        goto error;

    encoding = avio_r8(pb);
    taglen--;

    if (avio_read(pb, lang, 3) < 3)
        goto error;
    lang[3] = '\0';
    taglen -= 3;

    if (decode_str(s, pb, encoding, &descriptor, &taglen) < 0)
        goto error;

    if (decode_str(s, pb, encoding, &text, &taglen) < 0)
        goto error;


    key = av_asprintf("lyrics-%s%s%s", descriptor[0] ? (char *)descriptor : "",
                                       descriptor[0] ? "-" : "",
                                       lang);
    if (!key)
        goto error;

    av_dict_set(metadata, key, text, 0);

    ok = 1;
error:
    if (!ok)
        av_log(s, AV_LOG_ERROR, "Error reading lyrics, skipped\n");
    av_free(descriptor);
    av_free(text);
    av_free(key);
}
