
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef enum AVOptionType { ____Placeholder_AVOptionType } AVOptionType ;
typedef int AVRational ;


 int AVERROR (int ) ;
 int EINVAL ;

__attribute__((used)) static int opt_size(enum AVOptionType type)
{
    switch(type) {
    case 143:
    case 135:
    case 138:
        return sizeof(int);
    case 139:
    case 142:
    case 134:
    case 129:
        return sizeof(int64_t);
    case 140:
        return sizeof(double);
    case 137:
        return sizeof(float);
    case 130:
        return sizeof(uint8_t*);
    case 128:
    case 132:
        return sizeof(AVRational);
    case 144:
        return sizeof(uint8_t*) + sizeof(int);
    case 136:
        return sizeof(int[2]);
    case 133:
        return sizeof(enum AVPixelFormat);
    case 131:
        return sizeof(enum AVSampleFormat);
    case 141:
        return 4;
    }
    return AVERROR(EINVAL);
}
