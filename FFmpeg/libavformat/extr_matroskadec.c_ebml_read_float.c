
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int NEEDS_CHECKING ;
 double av_int2double (int ) ;
 double av_int2float (int ) ;
 int avio_rb32 (int *) ;
 int avio_rb64 (int *) ;

__attribute__((used)) static int ebml_read_float(AVIOContext *pb, int size, double *num)
{
    if (size == 0)
        *num = 0;
    else if (size == 4)
        *num = av_int2float(avio_rb32(pb));
    else if (size == 8)
        *num = av_int2double(avio_rb64(pb));
    else
        return AVERROR_INVALIDDATA;

    return NEEDS_CHECKING;
}
