
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pkey_pm {int pkey; int ex_pkey; } ;
struct TYPE_4__ {struct pkey_pm* pkey_pm; } ;
typedef TYPE_1__ EVP_PKEY ;


 struct pkey_pm* ssl_mem_zalloc (int) ;

int pkey_pm_new(EVP_PKEY *pk, EVP_PKEY *m_pkey)
{
    struct pkey_pm *pkey_pm;

    pkey_pm = ssl_mem_zalloc(sizeof(struct pkey_pm));
    if (!pkey_pm)
        return -1;

    pk->pkey_pm = pkey_pm;

    if (m_pkey) {
        struct pkey_pm *m_pkey_pm = (struct pkey_pm *)m_pkey->pkey_pm;

        pkey_pm->ex_pkey = m_pkey_pm->pkey;
    }

    return 0;
}
