
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * z; int * y; int * x; } ;
typedef TYPE_1__ Point ;
typedef int DWORD ;


 int KEY_LENGTH_DWORDS_P256 ;
 int multiprecision_add_mod (int *,int *,int *,int ) ;
 int multiprecision_init (int *,int ) ;
 scalar_t__ multiprecision_iszero (int *,int ) ;
 int multiprecision_lshift_mod (int *,int *,int ) ;
 int multiprecision_mersenns_mult_mod (int *,int *,int *,int ) ;
 int multiprecision_mersenns_squa_mod (int *,int *,int ) ;
 int multiprecision_sub_mod (int *,int *,int *,int ) ;

__attribute__((used)) static void ECC_Double(Point *q, Point *p, uint32_t keyLength)
{
    DWORD t1[KEY_LENGTH_DWORDS_P256];
    DWORD t2[KEY_LENGTH_DWORDS_P256];
    DWORD t3[KEY_LENGTH_DWORDS_P256];
    DWORD *x1;
    DWORD *x3;
    DWORD *y1;
    DWORD *y3;
    DWORD *z1;
    DWORD *z3;

    if (multiprecision_iszero(p->z, keyLength)) {
        multiprecision_init(q->z, keyLength);
        return;
    }

    x1 = p->x; y1 = p->y; z1 = p->z;
    x3 = q->x; y3 = q->y; z3 = q->z;

    multiprecision_mersenns_squa_mod(t1, z1, keyLength);
    multiprecision_sub_mod(t2, x1, t1, keyLength);
    multiprecision_add_mod(t1, x1, t1, keyLength);
    multiprecision_mersenns_mult_mod(t2, t1, t2, keyLength);
    multiprecision_lshift_mod(t3, t2, keyLength);
    multiprecision_add_mod(t2, t3, t2, keyLength);

    multiprecision_mersenns_mult_mod(z3, y1, z1, keyLength);
    multiprecision_lshift_mod(z3, z3, keyLength);

    multiprecision_mersenns_squa_mod(y3, y1, keyLength);
    multiprecision_lshift_mod(y3, y3, keyLength);
    multiprecision_mersenns_mult_mod(t3, y3, x1, keyLength);
    multiprecision_lshift_mod(t3, t3, keyLength);
    multiprecision_mersenns_squa_mod(y3, y3, keyLength);
    multiprecision_lshift_mod(y3, y3, keyLength);

    multiprecision_mersenns_squa_mod(x3, t2, keyLength);
    multiprecision_lshift_mod(t1, t3, keyLength);
    multiprecision_sub_mod(x3, x3, t1, keyLength);
    multiprecision_sub_mod(t1, t3, x3, keyLength);
    multiprecision_mersenns_mult_mod(t1, t1, t2, keyLength);
    multiprecision_sub_mod(y3, t1, y3, keyLength);
}
