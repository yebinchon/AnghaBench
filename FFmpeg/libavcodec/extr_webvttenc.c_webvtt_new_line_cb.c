
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int webvtt_print (void*,char*) ;

__attribute__((used)) static void webvtt_new_line_cb(void *priv, int forced)
{
    webvtt_print(priv, "\n");
}
