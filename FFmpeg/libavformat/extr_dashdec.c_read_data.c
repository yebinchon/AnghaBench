
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct representation {scalar_t__ cur_seq_no; scalar_t__ init_sec_buf_read_offset; scalar_t__ init_sec_data_len; scalar_t__ last_seq_no; int is_restart_needed; void* cur_seg; int init_sec_buf; int rep_idx; TYPE_3__* parent; int input; } ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ is_live; int interrupt_callback; } ;
typedef TYPE_1__ DASHContext ;


 int AVERROR_EOF ;
 int AVERROR_EXIT ;
 int AV_LOG_WARNING ;
 int FFMIN (scalar_t__,int) ;
 int av_log (TYPE_3__*,int ,char*,int ) ;
 scalar_t__ ff_check_interrupt (int ) ;
 int free_fragment (void**) ;
 void* get_current_fragment (struct representation*) ;
 int memcpy (int *,int ,int) ;
 int open_input (TYPE_1__*,struct representation*,void*) ;
 int read_from_url (struct representation*,void*,int *,int) ;
 int update_init_section (struct representation*) ;

__attribute__((used)) static int read_data(void *opaque, uint8_t *buf, int buf_size)
{
    int ret = 0;
    struct representation *v = opaque;
    DASHContext *c = v->parent->priv_data;

restart:
    if (!v->input) {
        free_fragment(&v->cur_seg);
        v->cur_seg = get_current_fragment(v);
        if (!v->cur_seg) {
            ret = AVERROR_EOF;
            goto end;
        }


        ret = update_init_section(v);
        if (ret)
            goto end;

        ret = open_input(c, v, v->cur_seg);
        if (ret < 0) {
            if (ff_check_interrupt(c->interrupt_callback)) {
                ret = AVERROR_EXIT;
                goto end;
            }
            av_log(v->parent, AV_LOG_WARNING, "Failed to open fragment of playlist %d\n", v->rep_idx);
            v->cur_seq_no++;
            goto restart;
        }
    }

    if (v->init_sec_buf_read_offset < v->init_sec_data_len) {

        int copy_size = FFMIN(v->init_sec_data_len - v->init_sec_buf_read_offset, buf_size);
        memcpy(buf, v->init_sec_buf, copy_size);
        v->init_sec_buf_read_offset += copy_size;
        ret = copy_size;
        goto end;
    }


    if (!v->cur_seg) {
        v->cur_seg = get_current_fragment(v);
    }
    if (!v->cur_seg) {
        ret = AVERROR_EOF;
        goto end;
    }
    ret = read_from_url(v, v->cur_seg, buf, buf_size);
    if (ret > 0)
        goto end;

    if (c->is_live || v->cur_seq_no < v->last_seq_no) {
        if (!v->is_restart_needed)
            v->cur_seq_no++;
        v->is_restart_needed = 1;
    }

end:
    return ret;
}
