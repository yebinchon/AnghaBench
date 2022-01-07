
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ff_norm_qscale(int qscale, int type)
{
    switch (type) {
    case 130: return qscale;
    case 129: return qscale >> 1;
    case 131: return qscale >> 2;
    case 128: return (63 - qscale + 2) >> 2;
    }
    return qscale;
}
