
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Map ;


 int assert_int (int,int) ;
 int * make_map () ;
 int * make_map_parent (int *) ;
 scalar_t__ map_get (int *,char*) ;
 int map_put (int *,char*,void*) ;

__attribute__((used)) static void test_map_stack() {
    Map *m1 = make_map();
    map_put(m1, "x", (void *)1);
    map_put(m1, "y", (void *)2);
    assert_int(1, (int)(intptr_t)map_get(m1, "x"));

    Map *m2 = make_map_parent(m1);
    assert_int(1, (int)(intptr_t)map_get(m2, "x"));
    map_put(m2, "x", (void *)3);
    assert_int(3, (int)(intptr_t)map_get(m2, "x"));
    assert_int(1, (int)(intptr_t)map_get(m1, "x"));
}
