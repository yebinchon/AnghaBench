
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;


 int asf_reset_header (int *) ;

__attribute__((used)) static int asf_read_close(AVFormatContext *s)
{
    asf_reset_header(s);

    return 0;
}
