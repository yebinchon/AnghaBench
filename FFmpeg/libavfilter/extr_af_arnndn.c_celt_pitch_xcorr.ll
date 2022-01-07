; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_celt_pitch_xcorr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_celt_pitch_xcorr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32, i32)* @celt_pitch_xcorr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_pitch_xcorr(float* %0, float* %1, float* %2, i32 %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x float], align 16
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %55, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sub nsw i32 %15, 3
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %13
  %19 = bitcast [4 x float]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 16, i1 false)
  %20 = load float*, float** %6, align 8
  %21 = load float*, float** %7, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @xcorr_kernel(float* %20, float* %24, float* %25, i32 %26)
  %28 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %29 = load float, float* %28, align 16
  %30 = load float*, float** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  store float %29, float* %33, align 4
  %34 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 1
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %36, i64 %39
  store float %35, float* %40, align 4
  %41 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 2
  %42 = load float, float* %41, align 8
  %43 = load float*, float** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %43, i64 %46
  store float %42, float* %47, align 4
  %48 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %50, i64 %53
  store float %49, float* %54, align 4
  br label %55

55:                                               ; preds = %18
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 4
  store i32 %57, i32* %11, align 4
  br label %13

58:                                               ; preds = %13
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load float*, float** %6, align 8
  %65 = load float*, float** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load i32, i32* %9, align 4
  %70 = call float @celt_inner_prod(float* %64, float* %68, i32 %69)
  %71 = load float*, float** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  store float %70, float* %74, align 4
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %59

78:                                               ; preds = %59
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xcorr_kernel(float*, float*, float*, i32) #2

declare dso_local float @celt_inner_prod(float*, float*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
