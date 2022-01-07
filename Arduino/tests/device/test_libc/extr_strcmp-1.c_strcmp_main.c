
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFF_SIZE ;
 unsigned int MAX_BLOCK_SIZE ;
 unsigned int MAX_DIFF ;
 unsigned int MAX_LEN ;
 unsigned int MAX_OFFSET ;
 int MAX_ZEROS ;
 int abort () ;
 int delay (int ) ;
 scalar_t__ errors ;
 int memcpy (char*,char*,unsigned int) ;
 int print_error (char*,int,...) ;
 int printf (char*) ;
 int rand_seed ;
 int srand (int ) ;
 int strcmp (char*,char*) ;
 int testname ;

void strcmp_main(void)
{

  char src[BUFF_SIZE], dest[BUFF_SIZE];


  srand (rand_seed);
  int i, j, zeros;
  unsigned sa;
  unsigned da;
  unsigned n, m, len;
  char *p;
  int ret;



  for (sa = 0; sa <= MAX_OFFSET; sa++)
    for (da = 0; da <= MAX_OFFSET; da++)
      for (n = 1; n <= MAX_BLOCK_SIZE; n++)
 {
 for (m = 1; m < n + MAX_DIFF; m++)
   for (len = 0; len < MAX_LEN; len++)
     for (zeros = 1; zeros < MAX_ZEROS; zeros++)
     {
       if (n - m > MAX_DIFF)
  continue;

       for (i = 0; i < BUFF_SIZE; i++)
  {
    src[i] = 'A' + (i % 26);
    dest[i] = src[i];
  }
   delay(0);
       memcpy (dest + da, src + sa, n);


       p = src + sa + n - 1;
       for (i = 0; i < zeros; i++)
  {
    *p++ = '\0';
  }


       p = dest + da + m - 1;
       for (j = 0; j < (int)len; j++)
  *p++ = 'x';

       *p = '\0';

       ret = strcmp (src + sa, dest + da);


       if (n == m)
  {
    if (len == 0)
      {
        if (ret != 0)
   {
   print_error ("\nFailed: after %s of %u bytes "
         "with src_align %u and dst_align %u, "
         "dest after %d bytes is modified for %d bytes, "
         "return value is %d, expected 0.\n",
         testname, n, sa, da, m, len, ret);
   }
      }
    else
      {
        if (ret >= 0)
   print_error ("\nFailed: after %s of %u bytes "
         "with src_align %u and dst_align %u, "
         "dest after %d bytes is modified for %d bytes, "
         "return value is %d, expected negative.\n",
         testname, n, sa, da, m, len, ret);
      }
  }
       else if (m > n)
  {
    if (ret >= 0)
      {
        print_error ("\nFailed: after %s of %u bytes "
       "with src_align %u and dst_align %u, "
       "dest after %d bytes is modified for %d bytes, "
       "return value is %d, expected negative.\n",
       testname, n, sa, da, m, len, ret);
      }
  }
       else
  {
    if (len == 0)
      {
        if (ret <= 0)
   print_error ("\nFailed: after %s of %u bytes "
         "with src_align %u and dst_align %u, "
         "dest after %d bytes is modified for %d bytes, "
         "return value is %d, expected positive.\n",
         testname, n, sa, da, m, len, ret);
      }
    else
      {
        if (ret >= 0)
   print_error ("\nFailed: after %s of %u bytes "
         "with src_align %u and dst_align %u, "
         "dest after %d bytes is modified for %d bytes, "
         "return value is %d, expected negative.\n",
         testname, n, sa, da, m, len, ret);
      }
  }
     }
 }


  src[1] = 'A';
  dest[1] = 'A';
  src[2] = 'B';
  dest[2] = 'B';
  src[3] = 'C';
  dest[3] = 'C';
  src[4] = '\0';
  dest[4] = '\0';

  src[0] = 0xc1;
  dest[0] = 0x41;
  ret = strcmp (src, dest);
  if (ret <= 0)
    print_error ("\nFailed: expected positive, return %d\n", ret);

  src[0] = 0x01;
  dest[0] = 0x82;
  ret = strcmp (src, dest);
  if (ret >= 0)
    print_error ("\nFailed: expected negative, return %d\n", ret);

  dest[0] = src[0] = 'D';
  src[3] = 0xc1;
  dest[3] = 0x41;
  ret = strcmp (src, dest);
  if (ret <= 0)
    print_error ("\nFailed: expected positive, return %d\n", ret);

  src[3] = 0x01;
  dest[3] = 0x82;
  ret = strcmp (src, dest);
  if (ret >= 0)
    print_error ("\nFailed: expected negative, return %d\n", ret);


  if (errors != 0)
    {
      printf ("ERROR. FAILED.\n");
      abort ();
    }

  printf("ok\n");
}
