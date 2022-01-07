
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;


 int free_adaptation_sets (int *) ;

__attribute__((used)) static int webm_dash_manifest_write_trailer(AVFormatContext *s)
{
    free_adaptation_sets(s);
    return 0;
}
