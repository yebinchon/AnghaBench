
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPacketSideDataType { ____Placeholder_AVPacketSideDataType } AVPacketSideDataType ;
const char *av_packet_side_data_name(enum AVPacketSideDataType type)
{
    switch(type) {
    case 138: return "Palette";
    case 139: return "New Extradata";
    case 137: return "Param Change";
    case 145: return "H263 MB Info";
    case 135: return "Replay Gain";
    case 149: return "Display Matrix";
    case 132: return "Stereo 3D";
    case 152: return "Audio Service Type";
    case 136: return "Quality stats";
    case 146: return "Fallback track";
    case 150: return "CPB properties";
    case 134: return "Skip Samples";
    case 144: return "JP Dual Mono";
    case 131: return "Strings Metadata";
    case 130: return "Subtitle Position";
    case 142: return "Matroska BlockAdditional";
    case 129: return "WebVTT ID";
    case 128: return "WebVTT Settings";
    case 141: return "Metadata Update";
    case 140: return "MPEGTS Stream ID";
    case 143: return "Mastering display metadata";
    case 151: return "Content light level metadata";
    case 133: return "Spherical Mapping";
    case 154: return "A53 Closed Captions";
    case 147: return "Encryption initialization data";
    case 148: return "Encryption info";
    case 153: return "Active Format Description data";
    }
    return ((void*)0);
}
