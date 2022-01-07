
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_FDS ;

__attribute__((used)) static inline bool fd_valid(int fd)
{
    return (fd < MAX_FDS) && (fd >= 0);
}
