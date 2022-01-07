
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVChromaLocation { ____Placeholder_AVChromaLocation } AVChromaLocation ;


 int AVCHROMA_LOC_NB ;
 int AVCHROMA_LOC_UNSPECIFIED ;
 int AVERROR (int ) ;
 int EINVAL ;

int avcodec_enum_to_chroma_pos(int *xpos, int *ypos, enum AVChromaLocation pos)
{
    if (pos <= AVCHROMA_LOC_UNSPECIFIED || pos >= AVCHROMA_LOC_NB)
        return AVERROR(EINVAL);
    pos--;

    *xpos = (pos&1) * 128;
    *ypos = ((pos>>1)^(pos<4)) * 128;

    return 0;
}
