
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFSIGN (int) ;

__attribute__((used)) static inline int sign_only(int v)
{
    return v ? FFSIGN(v) : 0;
}
