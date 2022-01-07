
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int key2 ;
struct TYPE_3__ {int metadata; } ;
typedef TYPE_1__ AVFrame ;


 int av_dict_set (int *,char*,char*,int ) ;
 int snprintf (char*,int,char*,char const*,...) ;

__attribute__((used)) static void set_meta(AVFrame *insamples, int channel, const char *key, char *value)
{
    char key2[128];

    if (channel)
        snprintf(key2, sizeof(key2), "lavfi.%s.%d", key, channel);
    else
        snprintf(key2, sizeof(key2), "lavfi.%s", key);
    av_dict_set(&insamples->metadata, key2, value, 0);
}
