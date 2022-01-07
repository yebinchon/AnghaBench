
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; scalar_t__ type; } ;
typedef int MOVContext ;
typedef TYPE_1__ MOVAtom ;
typedef int AVIOContext ;


 scalar_t__ MKTAG (char,char,char,char) ;
 scalar_t__ avio_rb32 (int *) ;
 scalar_t__ avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int mov_read_mdat (int *,int *,TYPE_1__) ;

__attribute__((used)) static int mov_read_wide(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    int err;

    if (atom.size < 8)
        return 0;
    if (avio_rb32(pb) != 0) {
        avio_skip(pb, atom.size - 4);
        return 0;
    }
    atom.type = avio_rl32(pb);
    atom.size -= 8;
    if (atom.type != MKTAG('m','d','a','t')) {
        avio_skip(pb, atom.size);
        return 0;
    }
    err = mov_read_mdat(c, pb, atom);
    return err;
}
