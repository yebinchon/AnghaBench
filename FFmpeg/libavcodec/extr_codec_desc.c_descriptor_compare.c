
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_2__ {int id; } ;
typedef TYPE_1__ AVCodecDescriptor ;



__attribute__((used)) static int descriptor_compare(const void *key, const void *member)
{
    enum AVCodecID id = *(const enum AVCodecID *) key;
    const AVCodecDescriptor *desc = member;

    return id - desc->id;
}
