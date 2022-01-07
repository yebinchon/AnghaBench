
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BuildHamcore (char*,char*,int) ;
 int FreeCedar () ;
 int FreeMayaqua () ;
 int InitCedar () ;
 int InitMayaqua (int,int,int,char**) ;
 int MayaquaMinimalMode () ;
 int Print (char*,...) ;

int main(int argc, char *argv[])
{
 MayaquaMinimalMode();







 InitMayaqua(0, 0, argc, argv);

 InitCedar();

 Print("hamcore.se2 Build Utility\n");
 Print("Copyright (c) SoftEther VPN Project. All Rights Reserved.\n\n");

 if (argc < 3)
 {
  Print("Usage: hamcorebuilder <src_dir> <dest_hamcore_filename>\n\n");
 }
 else
 {
  char *src_dir = argv[1];
  char *dst_filename = argv[2];

  Print("Src Dir: '%s'\n", src_dir);
  Print("Dest Filename: '%s'\n", dst_filename);

  Print("\nProcessing...\n");




  BuildHamcore(dst_filename, src_dir, 1);


  Print("\nDone.\n");
 }

 FreeCedar();
 FreeMayaqua();

 return 0;
}
