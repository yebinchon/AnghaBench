
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int size; } ;
typedef int MOVContext ;
typedef TYPE_1__ MOVAtom ;
typedef int AVIOContext ;


 int AVERROR_EOF ;
 scalar_t__ MKTAG (char,char,char,char) ;
 int SEEK_CUR ;
 scalar_t__ avio_feof (int *) ;
 scalar_t__ avio_rl32 (int *) ;
 int avio_seek (int *,int,int ) ;
 int mov_read_default (int *,int *,TYPE_1__) ;

__attribute__((used)) static int mov_read_meta(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    while (atom.size > 8) {
        uint32_t tag;
        if (avio_feof(pb))
            return AVERROR_EOF;
        tag = avio_rl32(pb);
        atom.size -= 4;
        if (tag == MKTAG('h','d','l','r')) {
            avio_seek(pb, -8, SEEK_CUR);
            atom.size += 8;
            return mov_read_default(c, pb, atom);
        }
    }
    return 0;
}
