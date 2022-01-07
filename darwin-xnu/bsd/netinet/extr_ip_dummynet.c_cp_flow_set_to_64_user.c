
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_flow_set_64 {int max_pkt_size; int avg_pkt_size; int lookup_weight; int lookup_step; int lookup_depth; int w_q_lookup; int c_4; int c_3; int c_2; int c_1; int max_p; int min_th; int max_th; int w_q; int backlogged; int last_expired; int rq_elements; int rq_size; int flow_mask; int plr; int qsize; int weight; int parent_nr; int flags_fs; int fs_nr; } ;
struct dn_flow_set {int max_pkt_size; int avg_pkt_size; int lookup_weight; int lookup_step; int lookup_depth; int w_q_lookup; int c_4; int c_3; int c_2; int c_1; int max_p; int min_th; int max_th; int w_q; int backlogged; int last_expired; int rq_elements; int rq_size; int flow_mask; int plr; int qsize; int weight; int parent_nr; int flags_fs; int fs_nr; } ;


 int CAST_DOWN (int ,int ) ;
 int user64_addr_t ;

__attribute__((used)) static void
cp_flow_set_to_64_user(struct dn_flow_set *set, struct dn_flow_set_64 *fs_bp)
{
 fs_bp->fs_nr = set->fs_nr;
 fs_bp->flags_fs = set->flags_fs ;
 fs_bp->parent_nr = set->parent_nr ;
 fs_bp->weight = set->weight ;
 fs_bp->qsize = set->qsize ;
 fs_bp->plr = set->plr ;
 fs_bp->flow_mask = set->flow_mask ;
 fs_bp->rq_size = set->rq_size ;
 fs_bp->rq_elements = set->rq_elements ;
 fs_bp->last_expired = set->last_expired ;
 fs_bp->backlogged = set->backlogged ;
 fs_bp->w_q = set->w_q ;
 fs_bp->max_th = set->max_th ;
 fs_bp->min_th = set->min_th ;
 fs_bp->max_p = set->max_p ;
 fs_bp->c_1 = set->c_1 ;
 fs_bp->c_2 = set->c_2 ;
 fs_bp->c_3 = set->c_3 ;
 fs_bp->c_4 = set->c_4 ;
 fs_bp->w_q_lookup = CAST_DOWN(user64_addr_t, set->w_q_lookup) ;
 fs_bp->lookup_depth = set->lookup_depth ;
 fs_bp->lookup_step = set->lookup_step ;
 fs_bp->lookup_weight = set->lookup_weight ;
 fs_bp->avg_pkt_size = set->avg_pkt_size ;
 fs_bp->max_pkt_size = set->max_pkt_size ;
}
