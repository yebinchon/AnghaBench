
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
GetPhysicalPinName(long pin_type)
{
    switch (pin_type)
    {
    case 132: return "Video Tuner";
    case 138: return "Video Composite";
    case 134: return "S-Video";
    case 136: return "Video RGB";
    case 128: return "Video YRYBY";
    case 133: return "Video Serial Digital";
    case 137: return "Video Parallel Digital";
    case 135: return "Video SCSI";
    case 139: return "Video AUX";
    case 140: return "Video 1394";
    case 131: return "Video USB";
    case 130: return "Video Decoder";
    case 129: return "Video Encoder";

    case 142: return "Audio Tuner";
    case 146: return "Audio Line";
    case 145: return "Audio Microphone";
    case 149: return "Audio AES/EBU Digital";
    case 143: return "Audio S/PDIF";
    case 144: return "Audio SCSI";
    case 148: return "Audio AUX";
    case 150: return "Audio 1394";
    case 141: return "Audio USB";
    case 147: return "Audio Decoder";
    default: return "Unknown Crossbar Pin Type—Please report!";
    }
}
