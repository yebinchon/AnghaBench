
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;


 int parse_obu_header (int const*,int,int *,int*,int*,int*,int*) ;

__attribute__((used)) static int read_obu(const uint8_t *buf, int size, int64_t *obu_size, int *type)
{
    int start_pos, temporal_id, spatial_id;
    int len;

    len = parse_obu_header(buf, size, obu_size, &start_pos,
                           type, &temporal_id, &spatial_id);
    if (len < 0)
        return len;

    return 0;
}
