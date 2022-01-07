
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRTContext ;


 int srt_print (int *,char*,char,char*) ;

__attribute__((used)) static void srt_close_tag(SRTContext *s, char tag)
{
    srt_print(s, "</%c%s>", tag, tag == 'f' ? "ont" : "");
}
