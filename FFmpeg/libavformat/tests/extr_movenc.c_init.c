
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_fps (int,int,int) ;

__attribute__((used)) static void init(int bf, int audio_preroll)
{
    init_fps(bf, audio_preroll, 30);
}
