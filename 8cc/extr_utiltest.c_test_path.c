
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_string (char*,int ) ;
 int fullpath (char*) ;

__attribute__((used)) static void test_path() {
    assert_string("/abc", fullpath("/abc"));
    assert_string("/abc/def", fullpath("/abc/def"));
    assert_string("/abc/def", fullpath("/abc///def"));
    assert_string("/abc/def", fullpath("//abc///def"));
    assert_string("/abc/xyz", fullpath("/abc/def/../xyz"));
    assert_string("/xyz", fullpath("/abc/def/../../../xyz"));
    assert_string("/xyz", fullpath("/abc/def/../../../../xyz"));
}
