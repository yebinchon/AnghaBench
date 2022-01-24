#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct elf_hdr {int* e_ident; scalar_t__ e_machine; } ;
struct TYPE_2__ {scalar_t__* arch; scalar_t__ has_arch; } ;
struct connection {int rdbuf_pos; scalar_t__ rdbuf; TYPE_1__ info; } ;

/* Variables and functions */
#define  EE_BIG 130 
#define  EE_LITTLE 129 
#define  EE_NONE 128 
 size_t EI_DATA ; 
 scalar_t__ EM_386 ; 
 scalar_t__ EM_486 ; 
 scalar_t__ EM_68K ; 
 scalar_t__ EM_860 ; 
 scalar_t__ EM_88K ; 
 scalar_t__ EM_AARCH64 ; 
 scalar_t__ EM_ARM ; 
 scalar_t__ EM_MIPS ; 
 scalar_t__ EM_MIPS_RS3_LE ; 
 scalar_t__ EM_PPC ; 
 scalar_t__ EM_PPC64 ; 
 scalar_t__ EM_SH ; 
 scalar_t__ EM_SPARC ; 
 scalar_t__ EM_SPARC32PLUS ; 
 scalar_t__ EM_SPARCV9 ; 
 scalar_t__ EM_X86_64 ; 
 char* TOKEN_RESPONSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (scalar_t__,int,char*,int) ; 

int FUNC6(struct connection *conn)
{
    if (!conn->info.has_arch)
    {
        struct elf_hdr *ehdr;
        int elf_start_pos;

        if ((elf_start_pos = FUNC5(conn->rdbuf, conn->rdbuf_pos, "ELF", 3)) == -1)
            return 0;
        elf_start_pos -= 4; // Go back ELF

        ehdr = (struct elf_hdr *)(conn->rdbuf + elf_start_pos);
        conn->info.has_arch = TRUE;

        switch (ehdr->e_ident[EI_DATA])
        {
            case EE_NONE:
                return 0;
            case EE_BIG:
#ifdef LOADER_LITTLE_ENDIAN
                ehdr->e_machine = htons(ehdr->e_machine);
#endif
                break;
            case EE_LITTLE:
#ifdef LOADER_BIG_ENDIAN
                ehdr->e_machine = htons(ehdr->e_machine);
#endif
                break;
        }

        /* arm mpsl spc m68k ppc x86 mips sh4 */
        if (ehdr->e_machine == EM_ARM || ehdr->e_machine == EM_AARCH64)
            FUNC3(conn->info.arch, "arm");
        else if (ehdr->e_machine == EM_MIPS || ehdr->e_machine == EM_MIPS_RS3_LE)
        {
            if (ehdr->e_ident[EI_DATA] == EE_LITTLE)
                FUNC3(conn->info.arch, "mpsl");
            else
                FUNC3(conn->info.arch, "mips");
        }
        else if (ehdr->e_machine == EM_386 || ehdr->e_machine == EM_486 || ehdr->e_machine == EM_860 || ehdr->e_machine == EM_X86_64)
            FUNC3(conn->info.arch, "x86");
        else if (ehdr->e_machine == EM_SPARC || ehdr->e_machine == EM_SPARC32PLUS || ehdr->e_machine == EM_SPARCV9)
            FUNC3(conn->info.arch, "spc");
        else if (ehdr->e_machine == EM_68K || ehdr->e_machine == EM_88K)
            FUNC3(conn->info.arch, "m68k");
        else if (ehdr->e_machine == EM_PPC || ehdr->e_machine == EM_PPC64)
            FUNC3(conn->info.arch, "ppc");
        else if (ehdr->e_machine == EM_SH)
            FUNC3(conn->info.arch, "sh4");
        else
        {
            conn->info.arch[0] = 0;
            FUNC0(conn);
        }
    }
    else
    {
        int offset;

        if ((offset = FUNC5(conn->rdbuf, conn->rdbuf_pos, TOKEN_RESPONSE, FUNC4(TOKEN_RESPONSE))) != -1)
            return offset;
        if (conn->rdbuf_pos > 7168)
        {
            // Hack drain buffer
            FUNC2(conn->rdbuf, conn->rdbuf + 6144, conn->rdbuf_pos - 6144);
            conn->rdbuf_pos -= 6144;
        }
    }

    return 0;
}