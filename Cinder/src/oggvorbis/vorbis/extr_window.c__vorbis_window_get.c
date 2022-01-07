
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float const** vwin ;

const float *_vorbis_window_get(int n){
  return vwin[n];
}
