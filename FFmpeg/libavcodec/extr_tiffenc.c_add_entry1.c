
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef enum TiffTypes { ____Placeholder_TiffTypes } TiffTypes ;
typedef enum TiffTags { ____Placeholder_TiffTags } TiffTags ;
typedef int TiffEncoderContext ;


 int TIFF_SHORT ;
 int add_entry (int *,int,int,int,void*) ;

__attribute__((used)) static int add_entry1(TiffEncoderContext *s,
                      enum TiffTags tag, enum TiffTypes type, int val)
{
    uint16_t w = val;
    uint32_t dw = val;
    return add_entry(s, tag, type, 1,
                     type == TIFF_SHORT ? (void *)&w : (void *)&dw);
}
