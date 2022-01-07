
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int assert_int (int,int ) ;
 int * set_add (int *,char*) ;
 int set_has (int *,char*) ;
 int * set_intersection (int *,int *) ;
 int * set_union (int *,int *) ;

__attribute__((used)) static void test_set() {
    Set *s = ((void*)0);
    assert_int(0, set_has(s, "abc"));
    s = set_add(s, "abc");
    s = set_add(s, "def");
    assert_int(1, set_has(s, "abc"));
    assert_int(1, set_has(s, "def"));
    assert_int(0, set_has(s, "xyz"));
    Set *t = ((void*)0);
    t = set_add(t, "abc");
    t = set_add(t, "DEF");
    assert_int(1, set_has(set_union(s, t), "abc"));
    assert_int(1, set_has(set_union(s, t), "def"));
    assert_int(1, set_has(set_union(s, t), "DEF"));
    assert_int(1, set_has(set_intersection(s, t), "abc"));
    assert_int(0, set_has(set_intersection(s, t), "def"));
    assert_int(0, set_has(set_intersection(s, t), "DEF"));
}
