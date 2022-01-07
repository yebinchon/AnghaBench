
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test (char*,char*) ;

int main(void)
{
    test(((void*)0), "domain.com");
    test("example.com domain.com", "domain.com");
    test("example.com other.com", "domain.com");
    test("example.com,domain.com", "domain.com");
    test("example.com,domain.com", "otherdomain.com");
    test("example.com, *.domain.com", "sub.domain.com");
    test("example.com, *.domain.com", "domain.com");
    test("example.com, .domain.com", "domain.com");
    test("*", "domain.com");
    return 0;
}
