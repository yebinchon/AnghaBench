; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale.c_parse_yuv_type.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale.c_parse_yuv_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"bt601\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@AVCOL_SPC_BT709 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@AVCOL_SPC_FCC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@AVCOL_SPC_SMPTE240M = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"bt470\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@AVCOL_SPC_BT470BG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"bt2020\00", align 1
@AVCOL_SPC_BT2020_NCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @parse_yuv_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_yuv_type(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %8

8:                                                ; preds = %7, %2
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strstr(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @AVCOL_SPC_BT709, align 4
  store i32 %16, i32* %4, align 4
  br label %65

17:                                               ; preds = %11, %8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strstr(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @AVCOL_SPC_FCC, align 4
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %20, %17
  %27 = load i8*, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strstr(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @AVCOL_SPC_SMPTE240M, align 4
  store i32 %34, i32* %4, align 4
  br label %63

35:                                               ; preds = %29, %26
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @strstr(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @strstr(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = call i64 @strstr(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %42, %38
  %51 = load i32, i32* @AVCOL_SPC_BT470BG, align 4
  store i32 %51, i32* %4, align 4
  br label %62

52:                                               ; preds = %46, %35
  %53 = load i8*, i8** %3, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i8*, i8** %3, align 8
  %57 = call i64 @strstr(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @AVCOL_SPC_BT2020_NCL, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %55, %52
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %33
  br label %64

64:                                               ; preds = %63, %24
  br label %65

65:                                               ; preds = %64, %15
  %66 = load i32, i32* %4, align 4
  %67 = icmp ult i32 %66, 1
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = icmp ugt i32 %69, 10
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %68, %65
  %75 = load i32, i32* @AVCOL_SPC_BT470BG, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* %4, align 4
  %78 = call i32* @sws_getCoefficients(i32 %77)
  ret i32* %78
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32* @sws_getCoefficients(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
