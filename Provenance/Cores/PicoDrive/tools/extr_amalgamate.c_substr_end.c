
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static const char *substr_end(const char *string, const char *part)
{
 const char *p = string;
 int len = strlen(part);

 while (*p && isspace(*p)) p++;
 return (strncmp(p, part, len) == 0) ? (p + len) : ((void*)0);
}
