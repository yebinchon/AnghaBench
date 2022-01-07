
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int metadata_header_size(const char *key)
{
    return 16 + 4 + 4 + strlen(key)*2 + 2;
}
