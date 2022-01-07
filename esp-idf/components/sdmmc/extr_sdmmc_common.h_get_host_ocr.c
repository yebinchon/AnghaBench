
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SD_OCR_VOL_MASK ;

__attribute__((used)) static inline uint32_t get_host_ocr(float voltage)
{


    (void) voltage;
    return SD_OCR_VOL_MASK;
}
