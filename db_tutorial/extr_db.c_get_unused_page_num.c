
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int num_pages; } ;
typedef TYPE_1__ Pager ;



uint32_t get_unused_page_num(Pager* pager) { return pager->num_pages; }
