
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int INT64_C (int) ;

__attribute__((used)) static int64_t unix_to_file_time(int64_t ti)
{
    int64_t t;

    t = ti * INT64_C(10);
    t += INT64_C(116444736000000000);
    return t;
}
