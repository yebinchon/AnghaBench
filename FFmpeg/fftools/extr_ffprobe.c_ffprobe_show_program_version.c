
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WriterContext ;
typedef int AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int CC_IDENT ;
 int CONFIG_THIS_YEAR ;
 int FFMPEG_CONFIGURATION ;
 int FFMPEG_VERSION ;
 int SECTION_ID_PROGRAM_VERSION ;
 int av_bprint_finalize (int *,int *) ;
 int av_bprint_init (int *,int,int ) ;
 int print_fmt (char*,char*,int ,int ) ;
 int print_str (char*,int ) ;
 int program_birth_year ;
 int writer_print_section_footer (int *) ;
 int writer_print_section_header (int *,int ) ;

__attribute__((used)) static void ffprobe_show_program_version(WriterContext *w)
{
    AVBPrint pbuf;
    av_bprint_init(&pbuf, 1, AV_BPRINT_SIZE_UNLIMITED);

    writer_print_section_header(w, SECTION_ID_PROGRAM_VERSION);
    print_str("version", FFMPEG_VERSION);
    print_fmt("copyright", "Copyright (c) %d-%d the FFmpeg developers",
              program_birth_year, CONFIG_THIS_YEAR);
    print_str("compiler_ident", CC_IDENT);
    print_str("configuration", FFMPEG_CONFIGURATION);
    writer_print_section_footer(w);

    av_bprint_finalize(&pbuf, ((void*)0));
}
