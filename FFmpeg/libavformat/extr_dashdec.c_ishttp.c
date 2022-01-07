
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_strstart (char const*,char*,int *) ;
 char* avio_find_protocol_name (char*) ;

__attribute__((used)) static int ishttp(char *url)
{
    const char *proto_name = avio_find_protocol_name(url);
    return av_strstart(proto_name, "http", ((void*)0));
}
