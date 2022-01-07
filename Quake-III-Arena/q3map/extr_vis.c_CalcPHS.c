
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int Error (char*) ;
 int MAX_MAP_LEAFS ;
 int _printf (char*,...) ;
 int leafbytes ;
 int leaflongs ;
 int memcpy (int*,int*,int) ;
 int portalclusters ;
 int* visBytes ;

void CalcPHS (void)
{
 int i, j, k, l, index;
 int bitbyte;
 long *dest, *src;
 byte *scan;
 int count;
 byte uncompressed[MAX_MAP_LEAFS/8];

 _printf ("Building PHS...\n");

 count = 0;
 for (i=0 ; i<portalclusters ; i++)
 {
  scan = visBytes + i*leafbytes;
  memcpy (uncompressed, scan, leafbytes);
  for (j=0 ; j<leafbytes ; j++)
  {
   bitbyte = scan[j];
   if (!bitbyte)
    continue;
   for (k=0 ; k<8 ; k++)
   {
    if (! (bitbyte & (1<<k)) )
     continue;

    index = ((j<<3)+k);
    if (index >= portalclusters)
     Error ("Bad bit in PVS");
    src = (long *)(visBytes + index*leafbytes);
    dest = (long *)uncompressed;
    for (l=0 ; l<leaflongs ; l++)
     ((long *)uncompressed)[l] |= src[l];
   }
  }
  for (j=0 ; j<portalclusters ; j++)
   if (uncompressed[j>>3] & (1<<(j&7)) )
    count++;


 }

 _printf ("Average clusters hearable: %i\n", count/portalclusters);
}
