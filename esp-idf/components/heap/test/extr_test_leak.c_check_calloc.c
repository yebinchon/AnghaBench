
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_NOT_NULL (char*) ;
 char* calloc (int,int) ;

__attribute__((used)) static char* check_calloc(int size)
{
    char *arr = calloc(size, sizeof(char));
    TEST_ASSERT_NOT_NULL(arr);
    return arr;
}
