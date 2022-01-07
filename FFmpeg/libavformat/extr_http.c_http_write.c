
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
typedef int temp ;
typedef int crlf ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int hd; int chunked_post; } ;
typedef TYPE_2__ HTTPContext ;


 int ffurl_write (int ,char const*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int http_write(URLContext *h, const uint8_t *buf, int size)
{
    char temp[11] = "";
    int ret;
    char crlf[] = "\r\n";
    HTTPContext *s = h->priv_data;

    if (!s->chunked_post) {

        return ffurl_write(s->hd, buf, size);
    }



    if (size > 0) {

        snprintf(temp, sizeof(temp), "%x\r\n", size);

        if ((ret = ffurl_write(s->hd, temp, strlen(temp))) < 0 ||
            (ret = ffurl_write(s->hd, buf, size)) < 0 ||
            (ret = ffurl_write(s->hd, crlf, sizeof(crlf) - 1)) < 0)
            return ret;
    }
    return size;
}
