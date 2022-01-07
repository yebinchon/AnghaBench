
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {TYPE_2__* arg; } ;
typedef TYPE_3__ arguments ;
typedef int arg_type ;
struct TYPE_5__ {char* a_string; int * a_wide_string; } ;
struct TYPE_6__ {TYPE_1__ a; } ;
typedef int FCHAR_T ;


 int CHAR_BIT ;
 double DBL_DIG ;
 double DBL_MAX_EXP ;
 double LDBL_DIG ;
 double LDBL_MAX_EXP ;
 size_t MB_CUR_MAX ;
 int TYPE_LONGDOUBLE ;
 int TYPE_LONGINT ;
 int TYPE_LONGLONGINT ;
 int TYPE_ULONGINT ;
 int TYPE_ULONGLONGINT ;
 int TYPE_WIDE_CHAR ;
 int TYPE_WIDE_STRING ;
 int abort () ;
 size_t local_strnlen (char const*,size_t) ;
 size_t local_wcslen (int const*) ;
 size_t local_wcsnlen (int const*,size_t) ;
 size_t strlen (char const*) ;
 size_t xsum (size_t,int) ;

__attribute__((used)) static inline size_t
MAX_ROOM_NEEDED (const arguments *ap, size_t arg_index, FCHAR_T conversion,
                 arg_type type, int flags, size_t width, int has_precision,
                 size_t precision, int pad_ourselves)
{
  size_t tmp_length;

  switch (conversion)
    {
    case 'd': case 'i': case 'u':
      if (type == TYPE_LONGINT || type == TYPE_ULONGINT)
        tmp_length =
          (unsigned int) (sizeof (unsigned long) * CHAR_BIT
                          * 0.30103
                         )
          + 1;
      else
        tmp_length =
          (unsigned int) (sizeof (unsigned int) * CHAR_BIT
                          * 0.30103
                         )
          + 1;
      if (tmp_length < precision)
        tmp_length = precision;

      tmp_length = xsum (tmp_length, tmp_length);

      tmp_length = xsum (tmp_length, 1);
      break;

    case 'o':
      if (type == TYPE_LONGINT || type == TYPE_ULONGINT)
        tmp_length =
          (unsigned int) (sizeof (unsigned long) * CHAR_BIT
                          * 0.333334
                         )
          + 1;
      else
        tmp_length =
          (unsigned int) (sizeof (unsigned int) * CHAR_BIT
                          * 0.333334
                         )
          + 1;
      if (tmp_length < precision)
        tmp_length = precision;

      tmp_length = xsum (tmp_length, 1);
      break;

    case 'x': case 'X':
      if (type == TYPE_LONGINT || type == TYPE_ULONGINT)
        tmp_length =
          (unsigned int) (sizeof (unsigned long) * CHAR_BIT
                          * 0.25
                         )
          + 1;
      else
        tmp_length =
          (unsigned int) (sizeof (unsigned int) * CHAR_BIT
                          * 0.25
                         )
          + 1;
      if (tmp_length < precision)
        tmp_length = precision;

      tmp_length = xsum (tmp_length, 2);
      break;

    case 'f': case 'F':
      if (type == TYPE_LONGDOUBLE)
        tmp_length =
          (unsigned int) (LDBL_MAX_EXP
                          * 0.30103
                          * 2
                         )
          + 1
          + 10;
      else
        tmp_length =
          (unsigned int) (DBL_MAX_EXP
                          * 0.30103
                          * 2
                         )
          + 1
          + 10;
      tmp_length = xsum (tmp_length, precision);
      break;

    case 'e': case 'E': case 'g': case 'G':
      tmp_length =
        12;
      tmp_length = xsum (tmp_length, precision);
      break;

    case 'a': case 'A':
      if (type == TYPE_LONGDOUBLE)
        tmp_length =
          (unsigned int) (LDBL_DIG
                          * 0.831
                         )
          + 1;
      else
        tmp_length =
          (unsigned int) (DBL_DIG
                          * 0.831
                         )
          + 1;
      if (tmp_length < precision)
        tmp_length = precision;

      tmp_length = xsum (tmp_length, 12);
      break;

    case 'c':





        tmp_length = 1;
      break;

    case 's':
        {
          const char *arg = ap->arg[arg_index].a.a_string;

          if (has_precision)
            tmp_length = local_strnlen (arg, precision);
          else
            tmp_length = strlen (arg);

        }
      break;

    case 'p':
      tmp_length =
        (unsigned int) (sizeof (void *) * CHAR_BIT
                        * 0.25
                       )
          + 1
          + 2;
      break;

    default:
      abort ();
    }

  if (!pad_ourselves)
    {
      if (tmp_length < width)
        tmp_length = width;

    }

  tmp_length = xsum (tmp_length, 1);

  return tmp_length;
}
