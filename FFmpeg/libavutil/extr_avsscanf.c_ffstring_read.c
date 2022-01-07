
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cookie; void* rend; void* rpos; } ;
typedef TYPE_1__ FFFILE ;


 char* memchr (char*,int ,size_t) ;
 int memcpy (unsigned char*,char*,size_t) ;

__attribute__((used)) static size_t ffstring_read(FFFILE *f, unsigned char *buf, size_t len)
{
    char *src = f->cookie;
    size_t k = len+256;
    char *end = memchr(src, 0, k);

    if (end) k = end-src;
    if (k < len) len = k;
    memcpy(buf, src, len);
    f->rpos = (void *)(src+len);
    f->rend = (void *)(src+k);
    f->cookie = src+k;

    return len;
}
