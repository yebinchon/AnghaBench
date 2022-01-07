
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVChromaLocation { ____Placeholder_AVChromaLocation } AVChromaLocation ;
typedef int WriterContext ;


 int AVCHROMA_LOC_UNSPECIFIED ;
 char* av_chroma_location_name (int) ;
 int print_str (char*,char const*) ;
 int print_str_opt (char*,char*) ;

__attribute__((used)) static void print_chroma_location(WriterContext *w, enum AVChromaLocation chroma_location)
{
    const char *val = av_chroma_location_name(chroma_location);
    if (!val || chroma_location == AVCHROMA_LOC_UNSPECIFIED) {
        print_str_opt("chroma_location", "unspecified");
    } else {
        print_str("chroma_location", val);
    }
}
