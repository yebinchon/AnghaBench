
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_with_same_dilate () ;
 scalar_t__ test_with_valid () ;

int main(int argc, char **argv)
{
    if (test_with_valid())
        return 1;
    if (test_with_same_dilate())
        return 1;

    return 0;
}
