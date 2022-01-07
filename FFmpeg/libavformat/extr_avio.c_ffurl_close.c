
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;


 int ffurl_closep (int **) ;

int ffurl_close(URLContext *h)
{
    return ffurl_closep(&h);
}
