
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* rtmp_packet_type(int type)
{
    switch (type) {
    case 139: return "chunk size";
    case 140: return "bytes read";
    case 130: return "user control";
    case 128: return "window acknowledgement size";
    case 132: return "set peer bandwidth";
    case 141: return "audio packet";
    case 129: return "video packet";
    case 136: return "Flex shared stream";
    case 137: return "Flex shared object";
    case 138: return "Flex shared message";
    case 133: return "notification";
    case 131: return "shared object";
    case 135: return "invoke";
    case 134: return "metadata";
    default: return "unknown";
    }
}
