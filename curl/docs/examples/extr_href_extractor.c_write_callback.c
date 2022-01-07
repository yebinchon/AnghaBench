
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HTML_VALUE_ENDED ;
 int html_parser_char_parse (void*,char) ;
 scalar_t__ html_parser_cmp_attr (void*,char*,int) ;
 scalar_t__ html_parser_cmp_tag (void*,char*,int) ;
 scalar_t__ html_parser_is_in (void*,int ) ;
 char* html_parser_val (void*) ;
 size_t html_parser_val_length (void*) ;
 int printf (char*,char*) ;

__attribute__((used)) static size_t write_callback(void *buffer, size_t size, size_t nmemb,
                             void *hsp)
{
  size_t realsize = size * nmemb, p;
  for(p = 0; p < realsize; p++) {
    html_parser_char_parse(hsp, ((char *)buffer)[p]);
    if(html_parser_cmp_tag(hsp, "a", 1))
      if(html_parser_cmp_attr(hsp, "href", 4))
        if(html_parser_is_in(hsp, HTML_VALUE_ENDED)) {
          html_parser_val(hsp)[html_parser_val_length(hsp)] = '\0';
          printf("%s\n", html_parser_val(hsp));
        }
  }
  return realsize;
}
