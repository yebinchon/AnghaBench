
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MetadataContext ;


 int strlen (char const*) ;
 int strncmp (char const*,char const*,int ) ;

__attribute__((used)) static int starts_with(MetadataContext *s, const char *value1, const char *value2)
{
    return !strncmp(value1, value2, strlen(value2));
}
