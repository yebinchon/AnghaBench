
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int label ;


 int TEST_ASSERT_MESSAGE (int,char*) ;
 int bootloader_common_label_search (char const*,char*) ;
 int printf (char*,int,char const*,char*) ;
 int strncpy (char*,char const*,int) ;

void check_label_search (int num_test, const char *list, const char *t_label, bool result)
{



    char label[16 + 1] = {0};
    strncpy(label, t_label, sizeof(label) - 1);

    bool ret = bootloader_common_label_search(list, label);
    if (ret != result) {
        printf("%d) %s  |  %s \n", num_test, list, label);
    }
    TEST_ASSERT_MESSAGE(ret == result, "Test failed");
}
