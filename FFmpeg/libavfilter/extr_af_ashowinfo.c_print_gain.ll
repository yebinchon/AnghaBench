; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ashowinfo.c_print_gain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ashowinfo.c_print_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s - \00", align 1
@INT32_MIN = common dso_local global float 0.000000e+00, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, float)* @print_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_gain(i32* %0, i8* %1, float %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store float %2, float* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @AV_LOG_INFO, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %7, i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load float, float* %6, align 4
  %12 = load float, float* @INT32_MIN, align 4
  %13 = fcmp oeq float %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @AV_LOG_INFO, align 4
  %17 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %25

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @AV_LOG_INFO, align 4
  %21 = load float, float* %6, align 4
  %22 = fdiv float %21, 1.000000e+05
  %23 = fpext float %22 to double
  %24 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %19, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %23)
  br label %25

25:                                               ; preds = %18, %14
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @AV_LOG_INFO, align 4
  %28 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %26, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
