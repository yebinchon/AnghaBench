
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* value; } ;
struct TYPE_5__ {int size; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVDictionaryEntry ;


 int strlen (char*) ;

__attribute__((used)) static int attachment_value_size(const AVPacket *pkt, const AVDictionaryEntry *e)
{
    return strlen("image/jpeg")*2 + 2 + 1 + (e ? strlen(e->value)*2 : 0) + 2 + 4 + pkt->size;
}
