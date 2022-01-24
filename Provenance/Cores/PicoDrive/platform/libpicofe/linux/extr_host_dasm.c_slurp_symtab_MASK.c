#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int HAS_SYMS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * symbols ; 
 scalar_t__ symcount ; 
 scalar_t__ symstorage ; 

__attribute__((used)) static void FUNC11(const char *filename)
{
  bfd *abfd;

  symcount = 0;

  abfd = FUNC6(filename, NULL);
  if (abfd == NULL) {
    FUNC7(stderr, "failed to open: %s\n", filename);
    goto no_symbols;
  }

  if (!FUNC1(abfd, bfd_object))
    goto no_symbols;

  if (!(FUNC3(abfd) & HAS_SYMS))
    goto no_symbols;

  symstorage = FUNC5(abfd);
  if (symstorage <= 0)
    goto no_symbols;

  symbols = FUNC9(symstorage);
  if (symbols == NULL)
    goto no_symbols;

  symcount = FUNC0(abfd, symbols);
  if (symcount < 0)
    goto no_symbols;

  symcount = FUNC10(symbols, symcount);
//  bfd_close(abfd);
  return;

no_symbols:
  FUNC7(stderr, "no symbols in %s\n", FUNC4(abfd));
  if (symbols != NULL)
    FUNC8(symbols);
  symbols = NULL;
  if (abfd != NULL)
    FUNC2(abfd);
}