
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;
typedef int WriterContext ;


 int AVUNERROR (int) ;
 int SECTION_ID_ERROR ;
 scalar_t__ av_strerror (int,char*,int) ;
 int print_int (char*,int) ;
 int print_str (char*,char const*) ;
 char* strerror (int ) ;
 int writer_print_section_footer (int *) ;
 int writer_print_section_header (int *,int ) ;

__attribute__((used)) static void show_error(WriterContext *w, int err)
{
    char errbuf[128];
    const char *errbuf_ptr = errbuf;

    if (av_strerror(err, errbuf, sizeof(errbuf)) < 0)
        errbuf_ptr = strerror(AVUNERROR(err));

    writer_print_section_header(w, SECTION_ID_ERROR);
    print_int("code", err);
    print_str("string", errbuf_ptr);
    writer_print_section_footer(w);
}
