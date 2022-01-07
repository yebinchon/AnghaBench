
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,int,int) ;

int mymemcmp(char *a, char *b, int len)
{
    int x;
    for (x = 0; x < len; x++) {
        if (a[x] != b[x]) {
            printf("Not equal at byte %d. a=%x, b=%x\n", x, (int)a[x], (int)b[x]);
            return 1;
        }
    }
    return 0;
}
