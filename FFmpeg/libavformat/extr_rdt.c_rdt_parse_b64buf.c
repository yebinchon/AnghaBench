
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int av_base64_decode (unsigned char*,char const*,unsigned int) ;
 unsigned char* av_mallocz (scalar_t__) ;
 int strlen (char const*) ;

__attribute__((used)) static unsigned char *
rdt_parse_b64buf (unsigned int *target_len, const char *p)
{
    unsigned char *target;
    int len = strlen(p);
    if (*p == '\"') {
        p++;
        len -= 2;
    }
    *target_len = len * 3 / 4;
    target = av_mallocz(*target_len + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!target)
        return ((void*)0);
    av_base64_decode(target, p, *target_len);
    return target;
}
