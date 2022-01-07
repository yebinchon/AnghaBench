
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF ;
 int GEOG ;
 int PROJ ;
 int RET_GEOKEY (int ,int ,int ) ;
 int VERT ;
 int conf ;
 int geog ;
 int name ;
 int proj ;
 int vert ;

__attribute__((used)) static const char *get_geokey_name(int key)
{
    RET_GEOKEY(VERT, vert, name);
    RET_GEOKEY(PROJ, proj, name);
    RET_GEOKEY(GEOG, geog, name);
    RET_GEOKEY(CONF, conf, name);

    return ((void*)0);
}
