; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_artifact.c_ARTIFACT_ReadConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_artifact.c_ARTIFACT_ReadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"ARTIFACT_NTSC\00", align 1
@mode_cfg_strings = common dso_local global i32 0, align 4
@ARTIFACT_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@mode_ntsc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ARTIFACT_PAL\00", align 1
@mode_pal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"ARTIFACT_NTSC_MODE\00", align 1
@ANTIC_artif_mode = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ARTIFACT_ReadConfig(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @mode_cfg_strings, align 4
  %15 = load i32, i32* @ARTIFACT_SIZE, align 4
  %16 = call i32 @CFG_MatchTextParameter(i8* %13, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* @mode_ntsc, align 4
  br label %58

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @mode_cfg_strings, align 4
  %30 = load i32, i32* @ARTIFACT_SIZE, align 4
  %31 = call i32 @CFG_MatchTextParameter(i8* %28, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %60

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* @mode_pal, align 4
  br label %57

38:                                               ; preds = %23
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @Util_sscandec(i8* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 4
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %42
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %60

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* @ANTIC_artif_mode, align 4
  br label %56

54:                                               ; preds = %38
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %36
  br label %58

58:                                               ; preds = %57, %21
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %54, %50, %34, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @CFG_MatchTextParameter(i8*, i32, i32) #1

declare dso_local i32 @Util_sscandec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
