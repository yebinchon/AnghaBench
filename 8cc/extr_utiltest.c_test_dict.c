
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dict ;


 int assert_int (int,long) ;
 int assert_null (scalar_t__) ;
 scalar_t__ dict_get (int *,char*) ;
 int dict_keys (int *) ;
 int dict_put (int *,char*,void*) ;
 int * make_dict () ;
 long vec_len (int ) ;

__attribute__((used)) static void test_dict() {
    Dict *dict = make_dict();
    assert_null(dict_get(dict, "abc"));
    dict_put(dict, "abc", (void *)50);
    dict_put(dict, "xyz", (void *)70);
    assert_int(50, (long)dict_get(dict, "abc"));
    assert_int(70, (long)dict_get(dict, "xyz"));
    assert_int(2, vec_len(dict_keys(dict)));
}
