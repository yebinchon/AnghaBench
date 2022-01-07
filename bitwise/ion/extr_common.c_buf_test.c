
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int buf_free (int*) ;
 size_t buf_len (int*) ;
 int buf_printf (char*,char*,int) ;
 int buf_push (int*,int) ;
 scalar_t__ strcmp (char*,char*) ;

void buf_test(void) {
    int *buf = ((void*)0);
    assert(buf_len(buf) == 0);
    int n = 1024;
    for (int i = 0; i < n; i++) {
        buf_push(buf, i);
    }
    assert(buf_len(buf) == n);
    for (size_t i = 0; i < buf_len(buf); i++) {
        assert(buf[i] == i);
    }
    buf_free(buf);
    assert(buf == ((void*)0));
    assert(buf_len(buf) == 0);
    char *str = ((void*)0);
    buf_printf(str, "One: %d\n", 1);
    assert(strcmp(str, "One: 1\n") == 0);
    buf_printf(str, "Hex: 0x%x\n", 0x12345678);
    assert(strcmp(str, "One: 1\nHex: 0x12345678\n") == 0);
}
