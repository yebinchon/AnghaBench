
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int value ;
typedef int key ;
typedef int int64_t ;
struct TYPE_3__ {int metadata; int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int INT_MAX ;
 int av_dict_set (int *,char*,char*,int ) ;
 int avio_feof (int *) ;
 int avio_get_str (int *,int ,char*,int) ;
 unsigned int avio_rb32 (int *) ;

__attribute__((used)) static void read_info_chunk(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    unsigned int i;
    unsigned int nb_entries = avio_rb32(pb);
    for (i = 0; i < nb_entries && !avio_feof(pb); i++) {
        char key[32];
        char value[1024];
        avio_get_str(pb, INT_MAX, key, sizeof(key));
        avio_get_str(pb, INT_MAX, value, sizeof(value));
        av_dict_set(&s->metadata, key, value, 0);
    }
}
