
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecompare (char const*,char*) ;
 int strchr (char const*,char) ;

__attribute__((used)) static bool bad_domain(const char *domain)
{
  return !strchr(domain, '.') && !strcasecompare(domain, "localhost");
}
