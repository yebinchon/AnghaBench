
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int URLContext ;


 int http_seek_internal (int *,int ,int,int ) ;

__attribute__((used)) static int64_t http_seek(URLContext *h, int64_t off, int whence)
{
    return http_seek_internal(h, off, whence, 0);
}
