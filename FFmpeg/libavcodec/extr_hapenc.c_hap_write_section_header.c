
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum HapSectionType { ____Placeholder_HapSectionType } HapSectionType ;
typedef enum HapHeaderLength { ____Placeholder_HapHeaderLength } HapHeaderLength ;
typedef int PutByteContext ;


 int HAP_HDR_LONG ;
 int bytestream2_put_byte (int *,int) ;
 int bytestream2_put_le24 (int *,int) ;
 int bytestream2_put_le32 (int *,int) ;

__attribute__((used)) static void hap_write_section_header(PutByteContext *pbc,
                                     enum HapHeaderLength header_length,
                                     int section_length,
                                     enum HapSectionType section_type)
{




    bytestream2_put_le24(pbc, header_length == HAP_HDR_LONG ? 0 : section_length);
    bytestream2_put_byte(pbc, section_type);

    if (header_length == HAP_HDR_LONG) {
        bytestream2_put_le32(pbc, section_length);
    }
}
