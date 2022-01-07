
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int FIXP ;

__attribute__((used)) static int64_t int_pow(int64_t a, int p)
{
    int64_t v = FIXP;

    for (; p; p--) {
        v *= a;
        v /= FIXP;
    }

    return v;
}
