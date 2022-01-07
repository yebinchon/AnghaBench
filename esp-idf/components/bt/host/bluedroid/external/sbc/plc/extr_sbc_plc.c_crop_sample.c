
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static int16_t crop_sample(float val){
    float croped_val = val;
    if (croped_val > 32767.0) croped_val= 32767.0;
    if (croped_val < -32768.0) croped_val=-32768.0;
    return (int16_t) croped_val;
}
