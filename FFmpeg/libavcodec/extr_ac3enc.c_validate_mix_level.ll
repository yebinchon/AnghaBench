; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3enc.c_validate_mix_level.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3enc.c_validate_mix_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"requested %s is not valid. using default value: %0.3f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, float*, float*, i32, i32, i32, i32*)* @validate_mix_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_mix_level(i8* %0, i8* %1, float* %2, float* %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store float* %2, float** %11, align 8
  store float* %3, float** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %18 = load float*, float** %11, align 8
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %12, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @validate_float_option(float %19, float* %20, i32 %21)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %8
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %17, align 4
  %28 = load float*, float** %11, align 8
  %29 = load float, float* %28, align 4
  %30 = fpext float %29 to double
  %31 = fcmp oge double %30, 0.000000e+00
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* @AV_LOG_WARNING, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load float*, float** %12, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = call i32 @av_log(i8* %33, i32 %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %35, float %40)
  br label %42

42:                                               ; preds = %32, %26
  br label %43

43:                                               ; preds = %42, %8
  %44 = load float*, float** %12, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = load float*, float** %11, align 8
  store float %48, float* %49, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32*, i32** %16, align 8
  store i32 %50, i32* %51, align 4
  ret void
}

declare dso_local i32 @validate_float_option(float, float*, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
