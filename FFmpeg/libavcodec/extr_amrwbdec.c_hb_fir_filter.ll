; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_hb_fir_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_hb_fir_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_FIR_SIZE = common dso_local global i32 0, align 4
@AMRWB_SFR_SIZE_16k = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*)* @hb_fir_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hb_fir_filter(float* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %13 = load i32, i32* @HB_FIR_SIZE, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @HB_FIR_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %19 = load i32, i32* @HB_FIR_SIZE, align 4
  %20 = add nsw i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca float, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load float*, float** %7, align 8
  %25 = load i32, i32* @HB_FIR_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memcpy(float* %23, float* %24, i32 %28)
  %30 = load i32, i32* @HB_FIR_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %23, i64 %31
  %33 = load float*, float** %8, align 8
  %34 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(float* %32, float* %33, i32 %37)
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %75, %4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = load float*, float** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float 0.000000e+00, float* %47, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %71, %43
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @HB_FIR_SIZE, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %23, i64 %56
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  %63 = load float, float* %62, align 4
  %64 = fmul float %58, %63
  %65 = load float*, float** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fadd float %69, %64
  store float %70, float* %68, align 4
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %48

74:                                               ; preds = %48
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %39

78:                                               ; preds = %39
  %79 = load float*, float** %7, align 8
  %80 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %23, i64 %81
  %83 = load i32, i32* @HB_FIR_SIZE, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memcpy(float* %79, float* %82, i32 %86)
  %88 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(float*, float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
