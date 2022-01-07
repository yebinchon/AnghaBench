
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {void* buf; void* cookie; int read; } ;
typedef TYPE_1__ FFFILE ;


 int ff_vfscanf (TYPE_1__*,char const*,int ) ;
 int ffstring_read ;

__attribute__((used)) static int ff_vsscanf(const char *s, const char *fmt, va_list ap)
{
    FFFILE f = {
        .buf = (void *)s, .cookie = (void *)s,
        .read = ffstring_read,
    };

    return ff_vfscanf(&f, fmt, ap);
}
