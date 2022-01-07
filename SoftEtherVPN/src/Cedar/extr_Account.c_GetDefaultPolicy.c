
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; int member_10; int member_11; int member_12; int member_13; int member_14; int member_19; int member_21; int member_22; int member_23; int member_24; int member_25; int member_26; int member_27; int member_28; int member_30; int member_32; int member_33; int member_34; int member_35; int member_36; int member_31; int member_29; int member_20; int member_18; int member_17; int member_16; int member_15; } ;
typedef TYPE_1__ POLICY ;



POLICY *GetDefaultPolicy()
{
 static POLICY def_policy =
 {
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  32,
  20,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
 };

 return &def_policy;
}
