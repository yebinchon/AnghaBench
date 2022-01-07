
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum HapSectionType { ____Placeholder_HapSectionType } HapSectionType ;
struct TYPE_10__ {int * priv_data; } ;
struct TYPE_9__ {int data; int size; } ;
typedef int HapqaExtractContext ;
typedef int GetByteContext ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVBSFContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int SEEK_SET ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int av_packet_unref (TYPE_1__*) ;
 int bytestream2_init (int *,int,int) ;
 int bytestream2_seek (int *,int,int ) ;
 scalar_t__ check_texture (int *,int) ;
 int ff_bsf_get_packet_ref (TYPE_2__*,TYPE_1__*) ;
 int ff_hap_parse_section_header (int *,int*,int*) ;

__attribute__((used)) static int hapqa_extract(AVBSFContext *bsf, AVPacket *pkt)
{
    HapqaExtractContext *ctx = bsf->priv_data;
    GetByteContext gbc;
    int section_size;
    enum HapSectionType section_type;
    int start_section_size;
    int target_packet_size = 0;
    int ret = 0;

    ret = ff_bsf_get_packet_ref(bsf, pkt);
    if (ret < 0)
        return ret;

    bytestream2_init(&gbc, pkt->data, pkt->size);
    ret = ff_hap_parse_section_header(&gbc, &section_size, &section_type);
    if (ret != 0)
        goto fail;

    if ((section_type & 0x0F) != 0x0D) {
        av_log(bsf, AV_LOG_ERROR, "Invalid section type for HAPQA %#04x.\n", section_type & 0x0F);
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    start_section_size = 4;

    bytestream2_seek(&gbc, start_section_size, SEEK_SET);

    ret = ff_hap_parse_section_header(&gbc, &section_size, &section_type);
    if (ret != 0)
        goto fail;

    target_packet_size = section_size + 4;

    if (check_texture(ctx, section_type) == 0) {
        start_section_size += 4 + section_size;
        bytestream2_seek(&gbc, start_section_size, SEEK_SET);
        ret = ff_hap_parse_section_header(&gbc, &section_size, &section_type);
        if (ret != 0)
            goto fail;

        target_packet_size = section_size + 4;

        if (check_texture(ctx, section_type) == 0){
            av_log(bsf, AV_LOG_ERROR, "No valid texture found.\n");
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }
    }

    pkt->data += start_section_size;
    pkt->size = target_packet_size;

fail:
    if (ret < 0)
        av_packet_unref(pkt);
    return ret;
}
