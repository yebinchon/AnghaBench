
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peer_bdaddr; scalar_t__ peer_name; } ;


 char* BTM_SecReadDevName (int ) ;
 TYPE_1__ bta_dm_search_cb ;

__attribute__((used)) static char *bta_dm_get_remname(void)
{
    char *p_name = (char *)bta_dm_search_cb.peer_name;
    char *p_temp;


    if (*p_name == '\0') {
        if ((p_temp = BTM_SecReadDevName(bta_dm_search_cb.peer_bdaddr)) != ((void*)0)) {
            p_name = p_temp;
        }
    }
    return p_name;
}
