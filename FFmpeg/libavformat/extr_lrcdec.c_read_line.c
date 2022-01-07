
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVIOContext ;
typedef int AVBPrint ;


 int av_bprint_chars (int *,int,int) ;
 int av_bprint_clear (int *) ;
 int avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_tell (int *) ;

__attribute__((used)) static int64_t read_line(AVBPrint *buf, AVIOContext *pb)
{
    int64_t pos = avio_tell(pb);

    av_bprint_clear(buf);
    while(!avio_feof(pb)) {
        int c = avio_r8(pb);
        if(c != '\r') {
            av_bprint_chars(buf, c, 1);
        }
        if(c == '\n') {
            break;
        }
    }
    return pos;
}
