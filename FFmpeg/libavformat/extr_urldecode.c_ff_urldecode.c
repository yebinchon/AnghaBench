
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ av_isxdigit (char) ;
 char* av_malloc (int) ;
 char av_tolower (char) ;
 int strlen (char const*) ;

char *ff_urldecode(const char *url)
{
    int s = 0, d = 0, url_len = 0;
    char c;
    char *dest = ((void*)0);

    if (!url)
        return ((void*)0);

    url_len = strlen(url) + 1;
    dest = av_malloc(url_len);

    if (!dest)
        return ((void*)0);

    while (s < url_len) {
        c = url[s++];

        if (c == '%' && s + 2 < url_len) {
            char c2 = url[s++];
            char c3 = url[s++];
            if (av_isxdigit(c2) && av_isxdigit(c3)) {
                c2 = av_tolower(c2);
                c3 = av_tolower(c3);

                if (c2 <= '9')
                    c2 = c2 - '0';
                else
                    c2 = c2 - 'a' + 10;

                if (c3 <= '9')
                    c3 = c3 - '0';
                else
                    c3 = c3 - 'a' + 10;

                dest[d++] = 16 * c2 + c3;

            } else {
                dest[d++] = c;
                dest[d++] = c2;
                dest[d++] = c3;
            }
        } else if (c == '+') {
            dest[d++] = ' ';
        } else {
            dest[d++] = c;
        }

    }

    return dest;
}
