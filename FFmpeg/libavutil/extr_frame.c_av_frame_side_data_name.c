
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVFrameSideDataType { ____Placeholder_AVFrameSideDataType } AVFrameSideDataType ;
const char *av_frame_side_data_name(enum AVFrameSideDataType type)
{
    switch(type) {
    case 136: return "AVPanScan";
    case 148: return "ATSC A53 Part 4 Closed Captions";
    case 128: return "Stereo 3D";
    case 138: return "AVMatrixEncoding";
    case 143: return "Metadata relevant to a downmix procedure";
    case 132: return "AVReplayGain";
    case 144: return "3x3 displaymatrix";
    case 147: return "Active format description";
    case 137: return "Motion vectors";
    case 130: return "Skip samples";
    case 146: return "Audio service type";
    case 139: return "Mastering display metadata";
    case 145: return "Content light level metadata";
    case 141: return "GOP timecode";
    case 131: return "SMPTE 12-1 timecode";
    case 129: return "Spherical Mapping";
    case 140: return "ICC profile";




    case 142: return "HDR Dynamic Metadata SMPTE2094-40 (HDR10+)";
    case 133: return "Regions Of Interest";
    }
    return ((void*)0);
}
