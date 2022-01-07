
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct Tracks {int nb_tracks; struct Track** tracks; } ;
struct Track {scalar_t__ sidx_start; int sidx_length; } ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
struct TYPE_7__ {int eof_reached; } ;
typedef TYPE_1__ AVIOContext ;


 int AVIO_FLAG_READ ;
 int MKBETAG (char,char,char,char) ;
 int SEEK_SET ;
 int avio_close (TYPE_1__*) ;
 int avio_open2 (TYPE_1__**,char const*,int ,int *,int *) ;
 int avio_rb32 (TYPE_1__*) ;
 scalar_t__ avio_seek (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ avio_tell (TYPE_1__*) ;

__attribute__((used)) static int find_sidx(struct Tracks *tracks, int start_index,
                     const char *file)
{
    int err = 0;
    AVIOContext *f = ((void*)0);
    int i;

    if ((err = avio_open2(&f, file, AVIO_FLAG_READ, ((void*)0), ((void*)0))) < 0)
        goto fail;

    while (!f->eof_reached) {
        int64_t pos = avio_tell(f);
        int32_t size, tag;

        size = avio_rb32(f);
        tag = avio_rb32(f);
        if (size < 8)
            break;
        if (tag == MKBETAG('s', 'i', 'd', 'x')) {
            for (i = start_index; i < tracks->nb_tracks; i++) {
                struct Track *track = tracks->tracks[i];
                if (!track->sidx_start) {
                    track->sidx_start = pos;
                    track->sidx_length = size;
                } else if (pos == track->sidx_start + track->sidx_length) {
                    track->sidx_length = pos + size - track->sidx_start;
                }
            }
        }
        if (avio_seek(f, pos + size, SEEK_SET) != pos + size)
            break;
    }

fail:
    if (f)
        avio_close(f);
    return err;
}
