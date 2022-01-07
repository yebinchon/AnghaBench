
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MetadataContext ;


 int FFMAX (int const,int ) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int const) ;

__attribute__((used)) static int ends_with(MetadataContext *s, const char *value1, const char *value2)
{
    const int len1 = strlen(value1);
    const int len2 = strlen(value2);

    return !strncmp(value1 + FFMAX(len1 - len2, 0), value2, len2);
}
