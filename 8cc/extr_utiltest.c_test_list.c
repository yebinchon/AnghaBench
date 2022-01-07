
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;


 int assert_int (int,long) ;
 int * make_vector () ;
 int * vec_copy (int *) ;
 scalar_t__ vec_get (int *,int) ;
 scalar_t__ vec_head (int *) ;
 long vec_len (int *) ;
 scalar_t__ vec_pop (int *) ;
 int vec_push (int *,void*) ;
 int * vec_reverse (int *) ;
 scalar_t__ vec_tail (int *) ;

__attribute__((used)) static void test_list() {
    Vector *list = make_vector();
    assert_int(0, vec_len(list));
    vec_push(list, (void *)1);
    assert_int(1, vec_len(list));
    vec_push(list, (void *)2);
    assert_int(2, vec_len(list));

    Vector *copy = vec_copy(list);
    assert_int(2, vec_len(copy));
    assert_int(1, (long)vec_get(copy, 0));
    assert_int(2, (long)vec_get(copy, 1));

    Vector *rev = vec_reverse(list);
    assert_int(2, vec_len(rev));
    assert_int(1, (long)vec_pop(rev));
    assert_int(1, vec_len(rev));
    assert_int(2, (long)vec_pop(rev));
    assert_int(0, vec_len(rev));

    Vector *list3 = make_vector();
    vec_push(list3, (void *)1);
    assert_int(1, (long)vec_head(list3));
    assert_int(1, (long)vec_tail(list3));
    vec_push(list3, (void *)2);
    assert_int(1, (long)vec_head(list3));
    assert_int(2, (long)vec_tail(list3));

    Vector *list4 = make_vector();
    vec_push(list4, (void *)1);
    vec_push(list4, (void *)2);
    assert_int(1, (long)vec_get(list4, 0));
    assert_int(2, (long)vec_get(list4, 1));
}
