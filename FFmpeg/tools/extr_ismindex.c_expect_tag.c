
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 int AV_WB32 (char*,scalar_t__) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static int expect_tag(int32_t got_tag, int32_t expected_tag) {
    if (got_tag != expected_tag) {
        char got_tag_str[4], expected_tag_str[4];
        AV_WB32(got_tag_str, got_tag);
        AV_WB32(expected_tag_str, expected_tag);
        fprintf(stderr, "wanted tag %.4s, got %.4s\n", expected_tag_str,
                got_tag_str);
        return -1;
    }
    return 0;
}
