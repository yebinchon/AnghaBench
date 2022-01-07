
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DV_VLC_MAP_LEV_SIZE ;
 int DV_VLC_MAP_RUN_SIZE ;
 int dv_vlc_map ;
 int dv_vlc_map_tableinit () ;
 int printf (char*) ;
 int write_dv_vlc_pair_2d_array (int ,int ,int ) ;
 int write_fileheader () ;

int main(void)
{
    dv_vlc_map_tableinit();

    write_fileheader();

    printf("static const struct dv_vlc_pair dv_vlc_map[DV_VLC_MAP_RUN_SIZE][DV_VLC_MAP_LEV_SIZE] = {\n");
    write_dv_vlc_pair_2d_array(dv_vlc_map, DV_VLC_MAP_RUN_SIZE, DV_VLC_MAP_LEV_SIZE);
    printf("};\n");

    return 0;
}
