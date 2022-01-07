
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* allocate ) (size_t) ;} ;
typedef TYPE_1__ internal_hooks ;


 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int strlen (char const*) ;
 scalar_t__ stub1 (size_t) ;

__attribute__((used)) static unsigned char* cJSON_strdup(const unsigned char* string, const internal_hooks * const hooks)
{
    size_t length = 0;
    unsigned char *copy = ((void*)0);

    if (string == ((void*)0))
    {
        return ((void*)0);
    }

    length = strlen((const char*)string) + sizeof("");
    if (!(copy = (unsigned char*)hooks->allocate(length)))
    {
        return ((void*)0);
    }
    memcpy(copy, string, length);

    return copy;
}
