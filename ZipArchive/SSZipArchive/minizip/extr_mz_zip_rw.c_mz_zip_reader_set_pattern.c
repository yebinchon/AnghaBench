
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {char const* pattern; int pattern_ignore_case; } ;
typedef TYPE_1__ mz_zip_reader ;



void mz_zip_reader_set_pattern(void *handle, const char *pattern, uint8_t ignore_case)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    reader->pattern = pattern;
    reader->pattern_ignore_case = ignore_case;
}
