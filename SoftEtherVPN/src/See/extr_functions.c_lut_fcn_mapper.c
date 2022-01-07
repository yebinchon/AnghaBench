
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int * lut_fcn ;






 int bucket_lookup ;
 int bucket_lookup_insert ;
 int normal_lut_w_insert ;
 int normal_lut_wo_insert ;

lut_fcn lut_fcn_mapper(uint32 index)
{

 switch (index)
 {
 case 128:
  return (lut_fcn) normal_lut_w_insert;

 case 129:
  return (lut_fcn) normal_lut_wo_insert;

 case 131:
  return (lut_fcn) bucket_lookup;

 case 130:
  return (lut_fcn) bucket_lookup_insert;

 default:
  return ((void*)0);
 }

 return ((void*)0);

}
