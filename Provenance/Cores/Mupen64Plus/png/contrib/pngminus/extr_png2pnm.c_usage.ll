; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/pngminus/extr_png2pnm.c_usage.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/pngminus/extr_png2pnm.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PNG2PNM\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"   by Willem van Schaik, 1999\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"   for Linux (and Unix) compilers\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Usage:  png2pnm [options] <file>.png [<file>.pnm]\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"   or:  ... | png2pnm [options]\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"   -r[aw]   write pnm-file in binary format (P4/P5/P6) (default)\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"   -n[oraw] write pnm-file in ascii format (P1/P2/P3)\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"   -a[lpha] <file>.pgm write PNG alpha channel as pgm-file\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"   -h | -?  print this help-information\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
