
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t name_len; char const* oid; int * name; } ;
typedef TYPE_1__ x509_attr_descriptor_t ;


 scalar_t__ strncmp (int *,char const*,size_t) ;
 TYPE_1__* x509_attrs ;

__attribute__((used)) static const char *x509_at_oid_from_name( const char *name, size_t name_len )
{
    const x509_attr_descriptor_t *cur;

    for( cur = x509_attrs; cur->name != ((void*)0); cur++ )
        if( cur->name_len == name_len &&
            strncmp( cur->name, name, name_len ) == 0 )
            break;

    return( cur->oid );
}
