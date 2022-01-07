
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DBG_TRACE ;
 unsigned long KDBG_CLASS_MAX ;
 unsigned long KDBG_CSC_MAX ;
 int assert (int ) ;
 int kdbg_typefilter ;
 int ktrace_assert_lock_held () ;
 unsigned long strtoul (char const*,char**,int ) ;
 int typefilter_allow_class (int ,unsigned long) ;
 int typefilter_allow_csc (int ,unsigned long) ;
 int typefilter_reject_all (int ) ;

__attribute__((used)) static void
kdbg_set_typefilter_string(const char *filter_desc)
{
 char *end = ((void*)0);

 ktrace_assert_lock_held();

 assert(filter_desc != ((void*)0));

 typefilter_reject_all(kdbg_typefilter);
 typefilter_allow_class(kdbg_typefilter, DBG_TRACE);


 if (filter_desc[0] >= '0' && filter_desc[0] <= '9'){
  unsigned long csc = strtoul(filter_desc, ((void*)0), 0);
  if (filter_desc != end && csc <= KDBG_CSC_MAX) {
   typefilter_allow_csc(kdbg_typefilter, csc);
  }
  return;
 }

 while (filter_desc[0] != '\0') {
  unsigned long allow_value;

  char filter_type = filter_desc[0];
  if (filter_type != 'C' && filter_type != 'S') {
   return;
  }
  filter_desc++;

  allow_value = strtoul(filter_desc, &end, 0);
  if (filter_desc == end) {

   return;
  }

  switch (filter_type) {
   case 'C':
    if (allow_value <= KDBG_CLASS_MAX) {
     typefilter_allow_class(kdbg_typefilter, allow_value);
    } else {

     return;
    }
    break;
   case 'S':
    if (allow_value <= KDBG_CSC_MAX) {
     typefilter_allow_csc(kdbg_typefilter, allow_value);
    } else {

     return;
    }
    break;
   default:
    return;
  }


  filter_desc = end;
  if (filter_desc[0] == ',') {
   filter_desc++;
  }
 }
}
