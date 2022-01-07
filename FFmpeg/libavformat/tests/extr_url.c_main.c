
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test (char*,char*) ;

int main(void)
{
    test(((void*)0), "baz");
    test("/foo/bar", "baz");
    test("/foo/bar", "../baz");
    test("/foo/bar", "/baz");
    test("http://server/foo/", "baz");
    test("http://server/foo/bar", "baz");
    test("http://server/foo/", "../baz");
    test("http://server/foo/bar/123", "../../baz");
    test("http://server/foo/bar/123", "/baz");
    test("http://server/foo/bar/123", "https://other/url");
    test("http://server/foo/bar?param=value/with/slashes", "/baz");
    test("http://server/foo/bar?param&otherparam", "?someparam");
    test("http://server/foo/bar", "//other/url");
    return 0;
}
