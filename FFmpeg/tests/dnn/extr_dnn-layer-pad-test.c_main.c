
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_with_mode_constant () ;
 scalar_t__ test_with_mode_reflect () ;
 scalar_t__ test_with_mode_symmetric () ;

int main(int argc, char **argv)
{
    if (test_with_mode_symmetric())
        return 1;

    if (test_with_mode_reflect())
        return 1;

    if (test_with_mode_constant())
        return 1;
}
