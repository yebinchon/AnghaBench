
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ff_http_match_no_proxy (char const*,char const*) ;
 int printf (char*,char const*,char*,char const*) ;

__attribute__((used)) static void test(const char *pattern, const char *host)
{
    int res = ff_http_match_no_proxy(pattern, host);
    printf("The pattern \"%s\" %s the hostname %s\n",
           pattern ? pattern : "(null)", res ? "matches" : "does not match",
           host);
}
