; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_get_duration_insec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_get_duration_insec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%f%c%n\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"get_duration_insec get a wrong time format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @get_duration_insec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_duration_insec(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store i8 0, i8* %12, align 1
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %13, align 8
  br label %15

15:                                               ; preds = %56, %29, %2
  %16 = load i8*, i8** %13, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = load i8*, i8** %13, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 80
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %13, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 84
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %13, align 8
  br label %15

32:                                               ; preds = %24
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), float* %11, i8* %12, i32* %10)
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @AV_LOG_WARNING, align 4
  %39 = call i32 @av_log(i32* %37, i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %72

40:                                               ; preds = %32
  %41 = load i8, i8* %12, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %55 [
    i32 68, label %43
    i32 72, label %46
    i32 77, label %49
    i32 83, label %52
  ]

43:                                               ; preds = %40
  %44 = load float, float* %11, align 4
  %45 = fptosi float %44 to i32
  store i32 %45, i32* %6, align 4
  br label %56

46:                                               ; preds = %40
  %47 = load float, float* %11, align 4
  %48 = fptosi float %47 to i32
  store i32 %48, i32* %7, align 4
  br label %56

49:                                               ; preds = %40
  %50 = load float, float* %11, align 4
  %51 = fptosi float %50 to i32
  store i32 %51, i32* %8, align 4
  br label %56

52:                                               ; preds = %40
  %53 = load float, float* %11, align 4
  %54 = fptosi float %53 to i32
  store i32 %54, i32* %9, align 4
  br label %56

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %52, %49, %46, %43
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %13, align 8
  br label %15

61:                                               ; preds = %15
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 %62, 24
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = mul nsw i32 %65, 60
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  %69 = mul nsw i32 %68, 60
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %36
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @sscanf(i8*, i8*, float*, i8*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
