; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_eval_ir.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_eval_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBFR_SIZE = common dso_local global i32 0, align 4
@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@ff_pow_0_55 = common dso_local global float* null, align 8
@ff_pow_0_7 = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, float*, float)* @eval_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eval_ir(float* %0, i32 %1, float* %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %13 = load i32, i32* @SUBFR_SIZE, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca float, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @LP_FILTER_ORDER, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = alloca float, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = getelementptr inbounds float, float* %17, i64 0
  store float 1.000000e+00, float* %22, align 16
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %57, %4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @LP_FILTER_ORDER, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = load float*, float** %5, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  %33 = load float*, float** @ff_pow_0_55, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = fmul float %32, %37
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %17, i64 %41
  store float %38, float* %42, align 4
  %43 = load float*, float** %5, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  %48 = load float*, float** @ff_pow_0_7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = fmul float %47, %52
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %21, i64 %55
  store float %53, float* %56, align 4
  br label %57

57:                                               ; preds = %27
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %23

60:                                               ; preds = %23
  %61 = getelementptr inbounds float, float* %17, i64 11
  %62 = call i32 @memset(float* %61, i32 0, i32 148)
  %63 = load float*, float** %7, align 8
  %64 = load i32, i32* @SUBFR_SIZE, align 4
  %65 = load i32, i32* @LP_FILTER_ORDER, align 4
  %66 = call i32 @ff_celp_lp_synthesis_filterf(float* %63, float* %21, float* %17, i32 %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load float, float* %8, align 4
  %69 = load float*, float** %7, align 8
  %70 = call i32 @pitch_sharpening(i32 %67, float %68, float* %69)
  %71 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(float*, i32, i32) #2

declare dso_local i32 @ff_celp_lp_synthesis_filterf(float*, float*, float*, i32, i32) #2

declare dso_local i32 @pitch_sharpening(i32, float, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
