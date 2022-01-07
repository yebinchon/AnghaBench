
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n; int** max_level; int** max_run; scalar_t__** table_vlc; } ;
typedef TYPE_1__ RLTable ;
typedef int MpegEncContext ;


 int MAX_LEVEL ;
 int get_rl_index (TYPE_1__*,int,int,int) ;

__attribute__((used)) static int get_size_of_code(MpegEncContext * s, RLTable *rl, int last, int run, int level, int intra){
    int size=0;
    int code;
    int run_diff= intra ? 0 : 1;

    code = get_rl_index(rl, last, run, level);
    size+= rl->table_vlc[code][1];
    if (code == rl->n) {
        int level1, run1;

        level1 = level - rl->max_level[last][run];
        if (level1 < 1)
            goto esc2;
        code = get_rl_index(rl, last, run, level1);
        if (code == rl->n) {
            esc2:
            size++;
            if (level > MAX_LEVEL)
                goto esc3;
            run1 = run - rl->max_run[last][level] - run_diff;
            if (run1 < 0)
                goto esc3;
            code = get_rl_index(rl, last, run1, level);
            if (code == rl->n) {
            esc3:

                size+=1+1+6+8;
            } else {

                size+= 1+1+ rl->table_vlc[code][1];
            }
        } else {

            size+= 1+1+ rl->table_vlc[code][1];
        }
    } else {
        size++;
    }
    return size;
}
