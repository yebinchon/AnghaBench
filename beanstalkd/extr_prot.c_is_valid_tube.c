
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NAME_CHARS ;
 size_t strlen (char const*) ;
 size_t strspn (char const*,int ) ;

__attribute__((used)) static bool
is_valid_tube(const char *name, size_t max)
{
    size_t len = strlen(name);
    return 0 < len && len <= max &&
        strspn(name, NAME_CHARS) == len &&
        name[0] != '-';
}
