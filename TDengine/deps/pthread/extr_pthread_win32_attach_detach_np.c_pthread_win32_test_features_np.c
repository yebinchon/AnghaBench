
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int ptw32_features ;

BOOL
pthread_win32_test_features_np (int feature_mask)
{
  return ((ptw32_features & feature_mask) == feature_mask);
}
