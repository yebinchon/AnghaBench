
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVChromaLocation { ____Placeholder_AVChromaLocation } AVChromaLocation ;
 int ZIMG_CHROMA_BOTTOM ;
 int ZIMG_CHROMA_BOTTOM_LEFT ;
 int ZIMG_CHROMA_CENTER ;
 int ZIMG_CHROMA_LEFT ;
 int ZIMG_CHROMA_TOP ;
 int ZIMG_CHROMA_TOP_LEFT ;

__attribute__((used)) static int convert_chroma_location(enum AVChromaLocation chroma_location)
{
    switch (chroma_location) {
    case 128:
    case 131:
        return ZIMG_CHROMA_LEFT;
    case 132:
        return ZIMG_CHROMA_CENTER;
    case 129:
        return ZIMG_CHROMA_TOP_LEFT;
    case 130:
        return ZIMG_CHROMA_TOP;
    case 133:
        return ZIMG_CHROMA_BOTTOM_LEFT;
    case 134:
        return ZIMG_CHROMA_BOTTOM;
    }
    return ZIMG_CHROMA_LEFT;
}
