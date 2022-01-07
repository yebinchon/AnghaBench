
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int AVERROR_EOF ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int* gif87a_sig ;
 int* gif89a_sig ;

__attribute__((used)) static int resync(AVIOContext *pb)
{
    int i;
    for (i = 0; i < 6; i++) {
        int b = avio_r8(pb);
        if (b != gif87a_sig[i] && b != gif89a_sig[i])
            i = -(b != 'G');
        if (avio_feof(pb))
            return AVERROR_EOF;
    }
    return 0;
}
