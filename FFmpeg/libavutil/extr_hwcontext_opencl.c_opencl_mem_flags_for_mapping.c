
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cl_mem_flags ;


 int AV_HWFRAME_MAP_READ ;
 int AV_HWFRAME_MAP_WRITE ;
 int CL_MEM_READ_ONLY ;
 int CL_MEM_READ_WRITE ;
 int CL_MEM_WRITE_ONLY ;

__attribute__((used)) static inline cl_mem_flags opencl_mem_flags_for_mapping(int map_flags)
{
    if ((map_flags & AV_HWFRAME_MAP_READ) &&
        (map_flags & AV_HWFRAME_MAP_WRITE))
        return CL_MEM_READ_WRITE;
    else if (map_flags & AV_HWFRAME_MAP_READ)
        return CL_MEM_READ_ONLY;
    else if (map_flags & AV_HWFRAME_MAP_WRITE)
        return CL_MEM_WRITE_ONLY;
    else
        return 0;
}
