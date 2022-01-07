
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ PID_NONE ;
 scalar_t__ VID_NONE ;

__attribute__((used)) static bool hid_null_detect(uint16_t vendor_id, uint16_t product_id)
{
  return vendor_id == VID_NONE && product_id == PID_NONE;
}
