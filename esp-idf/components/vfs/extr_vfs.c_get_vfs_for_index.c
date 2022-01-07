
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_entry_t ;


 int const** s_vfs ;
 int s_vfs_count ;

__attribute__((used)) static inline const vfs_entry_t *get_vfs_for_index(int index)
{
    if (index < 0 || index >= s_vfs_count) {
        return ((void*)0);
    } else {
        return s_vfs[index];
    }
}
