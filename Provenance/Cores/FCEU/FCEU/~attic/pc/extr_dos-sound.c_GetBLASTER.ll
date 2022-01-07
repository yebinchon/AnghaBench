; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_GetBLASTER.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_GetBLASTER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"BLASTER\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" Error getting BLASTER environment variable.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@SBPort = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SBIRQ = common dso_local global i32 0, align 4
@SBDMA = common dso_local global i32 0, align 4
@SBDMA16 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c" Invalid or incomplete BLASTER environment variable.\00", align 1
@format = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetBLASTER() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %4 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %82

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %53, %8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i32 @toupper(i8 signext %15)
  switch i32 %16, label %53 [
    i32 65, label %17
    i32 73, label %26
    i32 68, label %35
    i32 72, label %44
  ]

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* @SBPort)
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = load i32, i32* %2, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %2, align 4
  br label %53

26:                                               ; preds = %13
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* @SBIRQ)
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 0
  %33 = load i32, i32* %2, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %2, align 4
  br label %53

35:                                               ; preds = %13
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* @SBDMA)
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 4, i32 0
  %42 = load i32, i32* %2, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %2, align 4
  br label %53

44:                                               ; preds = %13
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* @SBDMA16)
  %48 = icmp eq i32 %47, 1
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 8, i32 0
  %51 = load i32, i32* %2, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %13, %44, %35, %26, %17
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %3, align 8
  br label %9

56:                                               ; preds = %9
  %57 = load i32, i32* %2, align 4
  %58 = xor i32 %57, 7
  %59 = and i32 %58, 7
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @SBDMA, align 4
  %63 = icmp sge i32 %62, 4
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @SBDMA16, align 4
  %66 = icmp sle i32 %65, 4
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %2, align 4
  %69 = and i32 %68, 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* @SBIRQ, align 4
  %73 = icmp sgt i32 %72, 15
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %67, %61, %56
  %75 = call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %82

76:                                               ; preds = %71
  %77 = load i32, i32* %2, align 4
  %78 = and i32 %77, 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i64 0, i64* @format, align 8
  br label %81

81:                                               ; preds = %80, %76
  store i32 1, i32* %1, align 4
  br label %82

82:                                               ; preds = %81, %74, %6
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @toupper(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
