
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int * z; int * y; int * x; } ;
typedef TYPE_1__ Point ;
typedef int DWORD ;


 int ECC_Double (TYPE_1__*,TYPE_1__*,int ) ;
 int KEY_LENGTH_DWORDS_P256 ;
 int multiprecision_init (int *,int ) ;
 scalar_t__ multiprecision_iszero (int *,int ) ;
 int multiprecision_lshift_mod (int *,int *,int ) ;
 int multiprecision_mersenns_mult_mod (int *,int *,int *,int ) ;
 int multiprecision_mersenns_squa_mod (int *,int *,int ) ;
 int multiprecision_sub_mod (int *,int *,int *,int ) ;
 int p_256_copy_point (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void ECC_Add(Point *r, Point *p, Point *q, uint32_t keyLength)
{
    DWORD t1[KEY_LENGTH_DWORDS_P256];
    DWORD t2[KEY_LENGTH_DWORDS_P256];
    DWORD *x1;
    DWORD *x2;
    DWORD *x3;
    DWORD *y1;
    DWORD *y2;
    DWORD *y3;
    DWORD *z1;
    DWORD *z2;
    DWORD *z3;

    x1 = p->x; y1 = p->y; z1 = p->z;
    x2 = q->x; y2 = q->y; z2 = q->z;
    x3 = r->x; y3 = r->y; z3 = r->z;


    if (multiprecision_iszero(z2, keyLength)) {
        p_256_copy_point(r, p);
        return;
    }


    if (multiprecision_iszero(z1, keyLength)) {
        p_256_copy_point(r, q);
        return;
    }

    multiprecision_mersenns_squa_mod(t1, z1, keyLength);
    multiprecision_mersenns_mult_mod(t2, z1, t1, keyLength);
    multiprecision_mersenns_mult_mod(t1, x2, t1, keyLength);
    multiprecision_mersenns_mult_mod(t2, y2, t2, keyLength);

    multiprecision_sub_mod(t1, t1, x1, keyLength);
    multiprecision_sub_mod(t2, t2, y1, keyLength);

    if (multiprecision_iszero(t1, keyLength)) {
        if (multiprecision_iszero(t2, keyLength)) {
            ECC_Double(r, q, keyLength) ;
            return;
        } else {
            multiprecision_init(z3, keyLength);
            return;
        }
    }

    multiprecision_mersenns_mult_mod(z3, z1, t1, keyLength);
    multiprecision_mersenns_squa_mod(y3, t1, keyLength);
    multiprecision_mersenns_mult_mod(z1, y3, t1, keyLength);
    multiprecision_mersenns_mult_mod(y3, y3, x1, keyLength);
    multiprecision_lshift_mod(t1, y3, keyLength);
    multiprecision_mersenns_squa_mod(x3, t2, keyLength);
    multiprecision_sub_mod(x3, x3, t1, keyLength);
    multiprecision_sub_mod(x3, x3, z1, keyLength);
    multiprecision_sub_mod(y3, y3, x3, keyLength);
    multiprecision_mersenns_mult_mod(y3, y3, t2, keyLength);
    multiprecision_mersenns_mult_mod(z1, z1, y1, keyLength);
    multiprecision_sub_mod(y3, y3, z1, keyLength);
}
