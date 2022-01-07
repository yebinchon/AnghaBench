
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reference; int pic_id; int frame_num; } ;
typedef int H264Ref ;
typedef TYPE_1__ H264Picture ;


 int av_assert0 (int) ;
 int split_field_copy (int *,TYPE_1__* const,int,int) ;

__attribute__((used)) static int build_def_list(H264Ref *def, int def_len,
                          H264Picture * const *in, int len, int is_long, int sel)
{
    int i[2] = { 0 };
    int index = 0;

    while (i[0] < len || i[1] < len) {
        while (i[0] < len && !(in[i[0]] && (in[i[0]]->reference & sel)))
            i[0]++;
        while (i[1] < len && !(in[i[1]] && (in[i[1]]->reference & (sel ^ 3))))
            i[1]++;
        if (i[0] < len) {
            av_assert0(index < def_len);
            in[i[0]]->pic_id = is_long ? i[0] : in[i[0]]->frame_num;
            split_field_copy(&def[index++], in[i[0]++], sel, 1);
        }
        if (i[1] < len) {
            av_assert0(index < def_len);
            in[i[1]]->pic_id = is_long ? i[1] : in[i[1]]->frame_num;
            split_field_copy(&def[index++], in[i[1]++], sel ^ 3, 0);
        }
    }

    return index;
}
