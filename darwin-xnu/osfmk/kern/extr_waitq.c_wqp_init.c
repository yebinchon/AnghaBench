
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tablesz ;
struct wq_prepost {int dummy; } ;


 int LT_IDX_MAX ;
 int P2ROUNDUP (int,int ) ;
 int PAGE_SIZE ;
 scalar_t__ PE_parse_boot_argn (char*,int*,int) ;
 scalar_t__ TRUE ;
 int assert (int) ;
 scalar_t__ g_lt_max_tbl_size ;
 int g_prepost_table ;
 int ltable_init (int *,char*,int,int,int ) ;
 int wqinfo (char*,int,int) ;
 int wqp_poison ;

__attribute__((used)) static void wqp_init(void)
{
 uint32_t tablesz = 0, max_wqp = 0;

 if (PE_parse_boot_argn("wqp_tsize", &tablesz, sizeof(tablesz)) != TRUE)
  tablesz = (uint32_t)g_lt_max_tbl_size;

 tablesz = P2ROUNDUP(tablesz, PAGE_SIZE);
 max_wqp = tablesz / sizeof(struct wq_prepost);
 assert(max_wqp > 0 && tablesz > 0);


 if (max_wqp > (LT_IDX_MAX + 1))
  max_wqp = LT_IDX_MAX + 1;

 wqinfo("init prepost table with max:%d elements (%d bytes)",
        max_wqp, tablesz);
 ltable_init(&g_prepost_table, "wqslab.prepost", max_wqp,
             sizeof(struct wq_prepost), wqp_poison);
}
