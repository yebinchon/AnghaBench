
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Tracks {int dummy; } ;
typedef scalar_t__ int32_t ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int AVIO_FLAG_READ ;
 scalar_t__ MKBETAG (char,float,char,char) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int avio_close (int *) ;
 int avio_open2 (int **,char const*,int ,int *,int *) ;
 scalar_t__ avio_rb32 (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_size (int *) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int read_tfra (struct Tracks*,int,int *) ;
 int stderr ;
 int write_fragments (struct Tracks*,int,int *,char const*,int,int,char const*) ;

__attribute__((used)) static int read_mfra(struct Tracks *tracks, int start_index,
                     const char *file, int split, int ismf,
                     const char *basename, const char* output_prefix)
{
    int err = 0;
    const char* err_str = "";
    AVIOContext *f = ((void*)0);
    int32_t mfra_size;

    if ((err = avio_open2(&f, file, AVIO_FLAG_READ, ((void*)0), ((void*)0))) < 0)
        goto fail;
    avio_seek(f, avio_size(f) - 4, SEEK_SET);
    mfra_size = avio_rb32(f);
    avio_seek(f, -mfra_size, SEEK_CUR);
    if (avio_rb32(f) != mfra_size) {
        err = AVERROR_INVALIDDATA;
        err_str = "mfra size mismatch";
        goto fail;
    }
    if (avio_rb32(f) != MKBETAG('m', 'f', 'r', 'a')) {
        err = AVERROR_INVALIDDATA;
        err_str = "mfra tag mismatch";
        goto fail;
    }
    while (!read_tfra(tracks, start_index, f)) {

    }

    if (split || ismf)
        err = write_fragments(tracks, start_index, f, basename, split, ismf,
                              output_prefix);
    err_str = "error in write_fragments";

fail:
    if (f)
        avio_close(f);
    if (err)
        fprintf(stderr, "Unable to read the MFRA atom in %s (%s)\n", file, err_str);
    return err;
}
