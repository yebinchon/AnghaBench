
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct dn_flow_set {int flags_fs; scalar_t__ lookup_step; scalar_t__ lookup_depth; int* w_q_lookup; scalar_t__ min_th; scalar_t__ max_th; int c_4; int c_2; int max_pkt_size; scalar_t__ c_1; scalar_t__ c_3; scalar_t__ w_q; } ;
struct dn_flow_queue {scalar_t__ len_bytes; scalar_t__ len; int avg; scalar_t__ q_time; int count; int random; } ;
typedef int int64_t ;


 int DN_IS_GENTLE_RED ;
 int DN_QSIZE_IS_BYTES ;
 int DPRINTF (char*) ;
 int SCALE (int) ;
 void* SCALE_MUL (int,int) ;
 int SCALE_VAL (int) ;
 scalar_t__ curr_time ;
 int my_random () ;

__attribute__((used)) static int
red_drops(struct dn_flow_set *fs, struct dn_flow_queue *q, int len)
{
    int64_t p_b = 0;

    u_int q_size = (fs->flags_fs & DN_QSIZE_IS_BYTES) ? q->len_bytes : q->len;

    DPRINTF(("\ndummynet: %d q: %2u ", (int) curr_time, q_size));


    if (q_size != 0) {



 int diff = SCALE(q_size) - q->avg;
 int64_t v = SCALE_MUL((int64_t) diff, (int64_t) fs->w_q);

 q->avg += (int) v;
    } else {







 if (q->avg) {
     u_int t = (curr_time - q->q_time) / fs->lookup_step;

     q->avg = (t < fs->lookup_depth) ?
      SCALE_MUL(q->avg, fs->w_q_lookup[t]) : 0;
 }
    }
    DPRINTF(("dummynet: avg: %u ", SCALE_VAL(q->avg)));



    if (q->avg < fs->min_th) {
 q->count = -1;
 return 0;
    }
    if (q->avg >= fs->max_th) {
 if (fs->flags_fs & DN_IS_GENTLE_RED) {






     p_b = SCALE_MUL((int64_t) fs->c_3, (int64_t) q->avg) - fs->c_4;
 } else {
     q->count = -1;
     DPRINTF(("dummynet: - drop"));
     return 1 ;
 }
    } else if (q->avg > fs->min_th) {





 p_b = SCALE_MUL((int64_t) fs->c_1, (int64_t) q->avg) - fs->c_2;
    }
    if (fs->flags_fs & DN_QSIZE_IS_BYTES)
 p_b = (p_b * len) / fs->max_pkt_size;
    if (++q->count == 0)
 q->random = (my_random() & 0xffff);
    else {




 if (SCALE_MUL(p_b, SCALE((int64_t) q->count)) > q->random) {
     q->count = 0;
     DPRINTF(("dummynet: - red drop"));

     q->random = (my_random() & 0xffff);
     return 1;
 }
    }

    return 0 ;
}
