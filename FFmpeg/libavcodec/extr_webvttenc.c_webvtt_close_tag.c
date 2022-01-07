
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebVTTContext ;


 int webvtt_print (int *,char*,char) ;

__attribute__((used)) static void webvtt_close_tag(WebVTTContext *s, char tag)
{
    webvtt_print(s, "</%c>", tag);
}
