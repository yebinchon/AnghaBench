
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kcdata_item {scalar_t__ size; int type; } ;
typedef int kern_return_t ;
typedef TYPE_1__* kcdata_descriptor_t ;
typedef int info ;
struct TYPE_4__ {int kcd_addr_end; } ;


 int KCDATA_TYPE_BUFFER_END ;
 int bzero (struct kcdata_item*,int) ;
 int kcdata_memcpy (TYPE_1__*,int ,struct kcdata_item*,int) ;

kern_return_t
kcdata_write_buffer_end(kcdata_descriptor_t data)
{
 struct kcdata_item info;
 bzero(&info, sizeof(info));
 info.type = KCDATA_TYPE_BUFFER_END;
 info.size = 0;
 return kcdata_memcpy(data, data->kcd_addr_end, &info, sizeof(info));
}
