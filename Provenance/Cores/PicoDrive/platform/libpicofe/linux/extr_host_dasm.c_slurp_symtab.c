
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int HAS_SYMS ;
 scalar_t__ bfd_canonicalize_symtab (int *,int *) ;
 int bfd_check_format (int *,int ) ;
 int bfd_close (int *) ;
 int bfd_get_file_flags (int *) ;
 char* bfd_get_filename (int *) ;
 scalar_t__ bfd_get_symtab_upper_bound (int *) ;
 int bfd_object ;
 int * bfd_openr (char const*,int *) ;
 int fprintf (int ,char*,char const*) ;
 int free (int *) ;
 int * malloc (scalar_t__) ;
 scalar_t__ remove_useless_symbols (int *,scalar_t__) ;
 int stderr ;
 int * symbols ;
 scalar_t__ symcount ;
 scalar_t__ symstorage ;

__attribute__((used)) static void slurp_symtab(const char *filename)
{
  bfd *abfd;

  symcount = 0;

  abfd = bfd_openr(filename, ((void*)0));
  if (abfd == ((void*)0)) {
    fprintf(stderr, "failed to open: %s\n", filename);
    goto no_symbols;
  }

  if (!bfd_check_format(abfd, bfd_object))
    goto no_symbols;

  if (!(bfd_get_file_flags(abfd) & HAS_SYMS))
    goto no_symbols;

  symstorage = bfd_get_symtab_upper_bound(abfd);
  if (symstorage <= 0)
    goto no_symbols;

  symbols = malloc(symstorage);
  if (symbols == ((void*)0))
    goto no_symbols;

  symcount = bfd_canonicalize_symtab(abfd, symbols);
  if (symcount < 0)
    goto no_symbols;

  symcount = remove_useless_symbols(symbols, symcount);

  return;

no_symbols:
  fprintf(stderr, "no symbols in %s\n", bfd_get_filename(abfd));
  if (symbols != ((void*)0))
    free(symbols);
  symbols = ((void*)0);
  if (abfd != ((void*)0))
    bfd_close(abfd);
}
