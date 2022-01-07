
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ host; scalar_t__ service; scalar_t__ proto; struct TYPE_4__* next; } ;
typedef TYPE_1__ mdns_out_question_t ;



__attribute__((used)) static bool _mdns_question_exists(mdns_out_question_t * needle, mdns_out_question_t * haystack)
{
    while (haystack) {
        if (haystack->type == needle->type
            && haystack->host == needle->host
            && haystack->service == needle->service
            && haystack->proto == needle->proto) {
            return 1;
        }
        haystack = haystack->next;
    }
    return 0;
}
