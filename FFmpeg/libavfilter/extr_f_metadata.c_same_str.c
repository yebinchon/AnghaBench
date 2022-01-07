
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MetadataContext ;


 int strcmp (char const*,char const*) ;

__attribute__((used)) static int same_str(MetadataContext *s, const char *value1, const char *value2)
{
    return !strcmp(value1, value2);
}
