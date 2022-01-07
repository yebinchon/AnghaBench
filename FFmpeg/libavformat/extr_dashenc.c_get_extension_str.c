
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SegmentType ;





__attribute__((used)) static const char *get_extension_str(SegmentType type, int single_file)
{
    switch (type) {

    case 129: return single_file ? "mp4" : "m4s";
    case 128: return "webm";
    default: return ((void*)0);
    }
}
