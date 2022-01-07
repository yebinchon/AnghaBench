
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct concat_nodes {scalar_t__ size; int uc; } ;
struct concat_data {scalar_t__ total_size; size_t current; int length; struct concat_nodes* nodes; } ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {struct concat_data* priv_data; } ;
typedef TYPE_1__ URLContext ;


 scalar_t__ AVERROR (int ) ;
 int AVSEEK_SIZE ;
 int EINVAL ;



 scalar_t__ ffurl_seek (int ,scalar_t__,int const) ;

__attribute__((used)) static int64_t concat_seek(URLContext *h, int64_t pos, int whence)
{
    int64_t result;
    struct concat_data *data = h->priv_data;
    struct concat_nodes *nodes = data->nodes;
    size_t i;

    if ((whence & AVSEEK_SIZE))
        return data->total_size;
    switch (whence) {
    case 129:
        for (i = data->length - 1; i && pos < -nodes[i].size; i--)
            pos += nodes[i].size;
        break;
    case 130:

        for (i = 0; i != data->current; i++)
            pos += nodes[i].size;
        pos += ffurl_seek(nodes[i].uc, 0, 130);
        whence = 128;

    case 128:
        for (i = 0; i != data->length - 1 && pos >= nodes[i].size; i++)
            pos -= nodes[i].size;
        break;
    default:
        return AVERROR(EINVAL);
    }

    result = ffurl_seek(nodes[i].uc, pos, whence);
    if (result >= 0) {
        data->current = i;
        while (i)
            result += nodes[--i].size;
    }
    return result;
}
