
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ eof_reached; } ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int SEEK_CUR ;
 int avio_r8 (TYPE_1__*) ;
 int avio_seek (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ avio_tell (TYPE_1__*) ;

__attribute__((used)) static int skip_reserved(AVIOContext *bc, int64_t pos)
{
    pos -= avio_tell(bc);
    if (pos < 0) {
        avio_seek(bc, pos, SEEK_CUR);
        return AVERROR_INVALIDDATA;
    } else {
        while (pos--) {
            if (bc->eof_reached)
                return AVERROR_INVALIDDATA;
            avio_r8(bc);
        }
        return 0;
    }
}
