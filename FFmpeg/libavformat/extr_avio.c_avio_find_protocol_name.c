
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ URLProtocol ;


 TYPE_1__* url_find_protocol (char const*) ;

const char *avio_find_protocol_name(const char *url)
{
    const URLProtocol *p = url_find_protocol(url);

    return p ? p->name : ((void*)0);
}
