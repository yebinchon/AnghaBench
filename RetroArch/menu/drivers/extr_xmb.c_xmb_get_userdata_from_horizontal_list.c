
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmb_node_t ;
struct TYPE_3__ {int horizontal_list; } ;
typedef TYPE_1__ xmb_handle_t ;


 scalar_t__ file_list_get_userdata_at_offset (int ,unsigned int) ;

__attribute__((used)) static xmb_node_t* xmb_get_userdata_from_horizontal_list(
      xmb_handle_t *xmb, unsigned i)
{
   return (xmb_node_t*)
      file_list_get_userdata_at_offset(xmb->horizontal_list, i);
}
