
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
typedef int VSMap ;
struct TYPE_6__ {TYPE_1__* vsapi; } ;
typedef TYPE_2__ VSContext ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_5__ {int (* propGetInt ) (int const*,char const*,int ,int*) ;} ;
typedef TYPE_3__ AVFormatContext ;


 int INT_MAX ;
 int INT_MIN ;
 int stub1 (int const*,char const*,int ,int*) ;

__attribute__((used)) static int get_vs_prop_int(AVFormatContext *s, const VSMap *map, const char *name, int def)
{
    VSContext *vs = s->priv_data;
    int64_t res;
    int err = 1;

    res = vs->vsapi->propGetInt(map, name, 0, &err);
    return err || res < INT_MIN || res > INT_MAX ? def : res;
}
