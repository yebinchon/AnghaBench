
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Map ;


 int assert_int (int,intptr_t) ;
 int assert_null (scalar_t__) ;
 char* format (char*,int) ;
 int * make_map () ;
 scalar_t__ map_get (int *,char*) ;
 int map_put (int *,char*,void*) ;
 int map_remove (int *,char*) ;

__attribute__((used)) static void test_map() {
    Map *m = make_map();
    assert_null(map_get(m, "abc"));


    for (int i = 0; i < 10000; i++) {
        char *k = format("%d", i);
        map_put(m, k, (void *)(intptr_t)i);
        assert_int(i, (int)(intptr_t)map_get(m, k));
    }


    for (int i = 0; i < 1000; i++) {
        char *k = format("%d", i);
        map_put(m, k, (void *)(intptr_t)i);
        assert_int(i, (int)(intptr_t)map_get(m, k));
    }


    for (int i = 0; i < 10000; i++) {
        char *k = format("%d", i);
        assert_int(i, (intptr_t)map_get(m, k));
        map_remove(m, k);
        assert_null(map_get(m, k));
    }
}
