
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void get_hls_playlist_name(char *playlist_name, int string_size,
                                  const char *base_url, int id) {
    if (base_url)
        snprintf(playlist_name, string_size, "%smedia_%d.m3u8", base_url, id);
    else
        snprintf(playlist_name, string_size, "media_%d.m3u8", id);
}
