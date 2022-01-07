
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;


 int mmsh_open_internal (int *,char const*,int,int ,int ) ;

__attribute__((used)) static int mmsh_open(URLContext *h, const char *uri, int flags)
{
    return mmsh_open_internal(h, uri, flags, 0, 0);
}
