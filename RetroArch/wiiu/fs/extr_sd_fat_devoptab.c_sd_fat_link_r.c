
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int _errno; } ;


 int ENOTSUP ;

__attribute__((used)) static int sd_fat_link_r (struct _reent *r, const char *existing, const char *newLink)
{
    r->_errno = ENOTSUP;
    return -1;
}
