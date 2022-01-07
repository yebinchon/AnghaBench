
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;
struct qfq_class {int cl_handle; int cl_qif; } ;
typedef scalar_t__ pktsched_bitmap_t ;


 int LOG_DEBUG ;
 int QFQIF_IFP (int ) ;
 int QFQ_MIN_SLOT_SHIFT ;
 int QFQ_ONE_FP ;
 int __fls (scalar_t__) ;
 int if_name (int ) ;
 int log (int ,char*,int ,int ,int ,int,int,int,int) ;
 scalar_t__ pktsched_verbose ;
 int qfq_style (int ) ;

__attribute__((used)) static int
qfq_calc_index(struct qfq_class *cl, u_int32_t inv_w, u_int32_t maxlen)
{
 u_int64_t slot_size = (u_int64_t)maxlen *inv_w;
 pktsched_bitmap_t size_map;
 int index = 0;

 size_map = (pktsched_bitmap_t)(slot_size >> QFQ_MIN_SLOT_SHIFT);
 if (!size_map)
  goto out;

 index = __fls(size_map) + 1;
 index -= !(slot_size - (1ULL << (index + QFQ_MIN_SLOT_SHIFT - 1)));

 if (index < 0)
  index = 0;
out:
 if (pktsched_verbose) {
  log(LOG_DEBUG, "%s: %s qid=%d grp=%d W=%u, L=%u, I=%d\n",
      if_name(QFQIF_IFP(cl->cl_qif)), qfq_style(cl->cl_qif),
      cl->cl_handle, index, (u_int32_t)(QFQ_ONE_FP/inv_w),
      maxlen, index);
 }
 return (index);
}
