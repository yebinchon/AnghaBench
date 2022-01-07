
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR_INVALIDDATA ;
 int CONF ;
 int GEOG ;
 int PROJ ;
 int RET_GEOKEY (int ,int ,int ) ;
 int VERT ;
 int conf ;
 int geog ;
 int proj ;
 int type ;
 int vert ;

__attribute__((used)) static int get_geokey_type(int key)
{
    RET_GEOKEY(VERT, vert, type);
    RET_GEOKEY(PROJ, proj, type);
    RET_GEOKEY(GEOG, geog, type);
    RET_GEOKEY(CONF, conf, type);

    return AVERROR_INVALIDDATA;
}
