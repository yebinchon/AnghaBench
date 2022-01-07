
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int boolean_t ;


 scalar_t__ valid_user_code_selector (int ) ;
 scalar_t__ valid_user_data_selector (int ) ;
 scalar_t__ valid_user_stack_selector (int ) ;

boolean_t
valid_user_segment_selectors(uint16_t cs,
  uint16_t ss,
  uint16_t ds,
  uint16_t es,
  uint16_t fs,
  uint16_t gs)
{
 return valid_user_code_selector(cs) &&
  valid_user_stack_selector(ss) &&
  valid_user_data_selector(ds) &&
  valid_user_data_selector(es) &&
  valid_user_data_selector(fs) &&
  valid_user_data_selector(gs);
}
