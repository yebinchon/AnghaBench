; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_print_opts.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_print_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USE_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" --file\00", align 1
@USE_STDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" --stdio\00", align 1
@STRICT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c" --nostrict\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" --verbose\00", align 1
@KEEP_TMPFILES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c" --preserve\00", align 1
@KEEP_GOING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c" --keep-going\00", align 1
@ACCUMULATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c" --accumulate\00", align 1
@FAST_WRITE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c" --slow\00", align 1
@sRGB_16BIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c" --sRGB-16bit\00", align 1
@NO_RESEED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c" --noreseed\00", align 1
@GBG_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c" --fault-gbg-warning\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_opts(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @USE_FILE, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @USE_STDIO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @STRICT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @VERBOSE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @KEEP_TMPFILES, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @KEEP_GOING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @ACCUMULATE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @FAST_WRITE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @sRGB_16BIT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @NO_RESEED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @GBG_ERROR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
