
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int ff_asf_guid ;
struct TYPE_7__ {int pb; } ;
typedef TYPE_1__ AVFormatContext ;
typedef int AVDictionary ;





 int asf_read_picture (TYPE_1__*,int) ;
 int asf_read_value (TYPE_1__*,int const*,int,int,int **) ;
 int asf_set_metadata (TYPE_1__*,int const*,int,int **) ;
 int ff_get_guid (int ,int *) ;
 int get_id3_tag (TYPE_1__*,int) ;
 int strcmp (int const*,char*) ;

__attribute__((used)) static int process_metadata(AVFormatContext *s, const uint8_t *name, uint16_t name_len,
                            uint16_t val_len, uint16_t type, AVDictionary **met)
{
    int ret;
    ff_asf_guid guid;

    if (val_len) {
        switch (type) {
        case 128:
            asf_read_value(s, name, val_len, type, met);
            break;
        case 130:
            if (!strcmp(name, "WM/Picture"))
                asf_read_picture(s, val_len);
            else if (!strcmp(name, "ID3"))
                get_id3_tag(s, val_len);
            else
                asf_read_value(s, name, val_len, type, met);
            break;
        case 129:
            ff_get_guid(s->pb, &guid);
            break;
        default:
            if ((ret = asf_set_metadata(s, name, type, met)) < 0)
                return ret;
            break;
        }
    }

    return 0;
}
