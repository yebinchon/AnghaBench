
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AACENC_ERROR ;
__attribute__((used)) static const char *aac_get_error(AACENC_ERROR err)
{
    switch (err) {
    case 129:
        return "No error";
    case 131:
        return "Invalid handle";
    case 130:
        return "Memory allocation error";
    case 128:
        return "Unsupported parameter";
    case 132:
        return "Invalid config";
    case 136:
        return "Initialization error";
    case 137:
        return "AAC library initialization error";
    case 134:
        return "SBR library initialization error";
    case 133:
        return "Transport library initialization error";
    case 135:
        return "Metadata library initialization error";
    case 138:
        return "Encoding error";
    case 139:
        return "End of file";
    default:
        return "Unknown error";
    }
}
