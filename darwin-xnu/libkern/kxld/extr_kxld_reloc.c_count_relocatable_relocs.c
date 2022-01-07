
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct scattered_relocation_info {int r_type; } ;
struct relocation_info {int r_address; scalar_t__ r_extern; scalar_t__ r_symbolnum; int r_type; scalar_t__ (* reloc_has_pair ) (int ) ;} ;
typedef struct relocation_info KXLDRelocator ;


 scalar_t__ R_ABS ;
 int R_SCATTERED ;
 int check (struct relocation_info const*) ;
 scalar_t__ stub1 (int ) ;
 scalar_t__ stub2 (int ) ;

__attribute__((used)) static u_int
count_relocatable_relocs(const KXLDRelocator *relocator,
    const struct relocation_info *relocs, u_int nrelocs)
{
    u_int num_nonpair_relocs = 0;
    u_int i = 0;
    const struct relocation_info *reloc = ((void*)0);
    const struct scattered_relocation_info *sreloc = ((void*)0);

    check(relocator);
    check(relocs);



    num_nonpair_relocs = 1;
    for (i = 1; i < nrelocs; ++i) {
        reloc = relocs + i;

        if (reloc->r_address & R_SCATTERED) {



            sreloc = (const struct scattered_relocation_info *) reloc;

            num_nonpair_relocs +=
                !relocator->reloc_has_pair(sreloc->r_type);
        } else {



            num_nonpair_relocs +=
                !(relocator->reloc_has_pair(reloc->r_type)
                 || (0 == reloc->r_extern && R_ABS == reloc->r_symbolnum));
        }

    }

    return num_nonpair_relocs;
}
