
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int CONFIG_BLE_MESH_RX_SDU_MAX ;
 int seg_len (int) ;

__attribute__((used)) static inline bool sdu_len_is_ok(bool ctl, u8_t seg_n)
{
    return ((seg_n * seg_len(ctl) + 1) <= CONFIG_BLE_MESH_RX_SDU_MAX);
}
