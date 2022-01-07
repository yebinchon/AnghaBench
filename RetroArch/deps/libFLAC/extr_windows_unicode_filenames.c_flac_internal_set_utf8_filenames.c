
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ FLAC__bool ;


 int utf8_filenames ;

void flac_internal_set_utf8_filenames(FLAC__bool flag)
{
 utf8_filenames = flag ? 1 : 0;
}
