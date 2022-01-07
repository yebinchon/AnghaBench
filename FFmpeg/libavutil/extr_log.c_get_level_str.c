
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_level_str(int level)
{
    switch (level) {
    case 130:
        return "quiet";
    case 135:
        return "debug";
    case 129:
        return "verbose";
    case 132:
        return "info";
    case 128:
        return "warning";
    case 134:
        return "error";
    case 133:
        return "fatal";
    case 131:
        return "panic";
    default:
        return "";
    }
}
