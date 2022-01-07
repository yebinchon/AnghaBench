
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int MKBETAG (char,char,char,char) ;
 int avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_rb32 (int *) ;
 scalar_t__ avio_tell (int *) ;

__attribute__((used)) static int nuv_resync(AVFormatContext *s, int64_t pos_limit) {
    AVIOContext *pb = s->pb;
    uint32_t tag = 0;
    while(!avio_feof(pb) && avio_tell(pb) < pos_limit) {
        tag = (tag << 8) | avio_r8(pb);
        if (tag == MKBETAG('R','T','j','j') &&
           (tag = avio_rb32(pb)) == MKBETAG('j','j','j','j') &&
           (tag = avio_rb32(pb)) == MKBETAG('j','j','j','j'))
            return 1;
    }
    return 0;
}
