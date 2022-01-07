
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int do_search_boundary(int pos, int plane_boundary, int search_range, int search_step)
{
    int search_boundary;

    search_range = search_range / search_step * search_step;

    if (pos == plane_boundary) {
        search_boundary = plane_boundary;
    } else if (pos > plane_boundary) {
        search_boundary = pos - search_range;

        while (search_boundary < plane_boundary) {
            search_boundary += search_step;
        }
    } else {
        search_boundary = pos + search_range;

        while (search_boundary > plane_boundary) {
            search_boundary -= search_step;
        }
    }

    return search_boundary;
}
