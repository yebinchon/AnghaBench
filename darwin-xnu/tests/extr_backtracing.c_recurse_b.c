
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect_stack () ;
 int getpid () ;
 int recurse_a (unsigned int) ;

__attribute__((used)) static int __attribute__((noinline,not_tail_called))
recurse_b(unsigned int frames)
{
    if (frames == 1) {
        expect_stack();
        getpid();
        return 0;
    }

    return recurse_a(frames - 1) + 1;
}
