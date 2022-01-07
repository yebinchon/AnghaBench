
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FEATURES_T ;


 int FEATURES_UNPACK_ALPHA (int ) ;
 int FEATURES_UNPACK_MULTI (int ) ;

__attribute__((used)) static bool bindable_rgb(FEATURES_T features)
{
   return !FEATURES_UNPACK_MULTI(features) && !FEATURES_UNPACK_ALPHA(features);
}
