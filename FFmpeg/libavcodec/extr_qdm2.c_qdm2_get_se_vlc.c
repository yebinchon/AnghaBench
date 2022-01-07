
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VLC ;
typedef int GetBitContext ;


 int qdm2_get_vlc (int *,int const*,int ,int) ;

__attribute__((used)) static int qdm2_get_se_vlc(const VLC *vlc, GetBitContext *gb, int depth)
{
    int value = qdm2_get_vlc(gb, vlc, 0, depth);

    return (value & 1) ? ((value + 1) >> 1) : -(value >> 1);
}
