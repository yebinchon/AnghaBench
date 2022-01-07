
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int GetByteContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int FFMIN (int,int) ;
 int av_log (int *,int ,char*) ;
 int bytestream2_get_be16 (int *) ;
 int bytestream2_get_buffer (int *,char*,int) ;

int ff_amf_get_string(GetByteContext *bc, uint8_t *str,
                      int strsize, int *length)
{
    int stringlen = 0;
    int readsize;
    stringlen = bytestream2_get_be16(bc);
    if (stringlen + 1 > strsize)
        return AVERROR(EINVAL);
    readsize = bytestream2_get_buffer(bc, str, stringlen);
    if (readsize != stringlen) {
        av_log(((void*)0), AV_LOG_WARNING,
               "Unable to read as many bytes as AMF string signaled\n");
    }
    str[readsize] = '\0';
    *length = FFMIN(stringlen, readsize);
    return 0;
}
