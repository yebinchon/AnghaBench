
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int le; int gb; } ;
typedef TYPE_1__ TiffContext ;
struct TYPE_6__ {int metadata; } ;
typedef TYPE_2__ AVFrame ;


 int AVERROR_INVALIDDATA ;



 int ff_tadd_doubles_metadata (int,char const*,char const*,int *,int ,int *) ;
 int ff_tadd_shorts_metadata (int,char const*,char const*,int *,int ,int ,int *) ;
 int ff_tadd_string_metadata (int,char const*,int *,int ,int *) ;

__attribute__((used)) static int add_metadata(int count, int type,
                        const char *name, const char *sep, TiffContext *s, AVFrame *frame)
{
    switch(type) {
    case 130: return ff_tadd_doubles_metadata(count, name, sep, &s->gb, s->le, &frame->metadata);
    case 129 : return ff_tadd_shorts_metadata(count, name, sep, &s->gb, s->le, 0, &frame->metadata);
    case 128: return ff_tadd_string_metadata(count, name, &s->gb, s->le, &frame->metadata);
    default : return AVERROR_INVALIDDATA;
    };
}
