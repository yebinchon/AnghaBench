
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_MESSAGE (int,char*) ;
 size_t critical_leak_threshold ;
 int fflush (int ) ;
 int printf (char*,char const*,char*,size_t,size_t,size_t) ;
 int stdout ;
 size_t warn_leak_threshold ;

__attribute__((used)) static void check_leak(size_t before_free, size_t after_free, const char *type)
{
    if (before_free <= after_free) {
        return;
    }
    size_t leaked = before_free - after_free;
    if (leaked <= warn_leak_threshold) {
        return;
    }

    printf("MALLOC_CAP_%s %s leak: Before %u bytes free, After %u bytes free (delta %u)\n",
           type,
           leaked <= critical_leak_threshold ? "potential" : "critical",
           before_free, after_free, leaked);
    fflush(stdout);
    TEST_ASSERT_MESSAGE(leaked <= critical_leak_threshold, "The test leaked too much memory");
}
