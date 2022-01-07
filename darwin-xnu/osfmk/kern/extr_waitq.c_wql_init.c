
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tablesz ;
struct waitq_link {int dummy; } ;


 int LT_IDX_MAX ;
 int P2ROUNDUP (int,int ) ;
 int PAGE_SIZE ;
 scalar_t__ PE_parse_boot_argn (char*,int*,int) ;
 scalar_t__ TRUE ;
 int assert (int) ;
 scalar_t__ g_lt_max_tbl_size ;
 int g_wqlinktable ;
 int ltable_init (int *,char*,int,int,int ) ;
 int wqinfo (char*,int,int) ;
 int wql_poison ;

__attribute__((used)) static void wql_init(void)
{
 uint32_t tablesz = 0, max_links = 0;

 if (PE_parse_boot_argn("wql_tsize", &tablesz, sizeof(tablesz)) != TRUE)
  tablesz = (uint32_t)g_lt_max_tbl_size;

 tablesz = P2ROUNDUP(tablesz, PAGE_SIZE);
 max_links = tablesz / sizeof(struct waitq_link);
 assert(max_links > 0 && tablesz > 0);


 if (max_links > (LT_IDX_MAX + 1))
  max_links = LT_IDX_MAX + 1;

 wqinfo("init linktable with max:%d elements (%d bytes)",
        max_links, tablesz);
 ltable_init(&g_wqlinktable, "wqslab.wql", max_links,
             sizeof(struct waitq_link), wql_poison);
}
