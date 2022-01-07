
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVChromaLocation { ____Placeholder_AVChromaLocation } AVChromaLocation ;
typedef int RaChromaSamplePosition ;




 int RA_CHROMA_SAMPLE_POSITION_COLOCATED ;
 int RA_CHROMA_SAMPLE_POSITION_UNKNOWN ;
 int RA_CHROMA_SAMPLE_POSITION_VERTICAL ;

__attribute__((used)) static inline RaChromaSamplePosition chroma_loc_map(enum AVChromaLocation chroma_loc)
{
    switch (chroma_loc) {
    case 129:
        return RA_CHROMA_SAMPLE_POSITION_VERTICAL;
    case 128:
        return RA_CHROMA_SAMPLE_POSITION_COLOCATED;
    default:
        return RA_CHROMA_SAMPLE_POSITION_UNKNOWN;
    }
}
