
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int S_IFDIR ;
 int S_IFREG ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;

__attribute__((used)) static inline mode_t get_stat_mode(bool is_dir)
{
    return S_IRWXU | S_IRWXG | S_IRWXO |
            ((is_dir) ? S_IFDIR : S_IFREG);
}
