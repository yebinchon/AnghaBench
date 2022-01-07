; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_sipr_decode_lp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_sipr_decode_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32)* @sipr_decode_lp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sipr_decode_lp(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @LP_FILTER_ORDER, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca double, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double 1.000000e+00, %20
  %22 = fptrunc double %21 to float
  store float %22, float* %14, align 4
  %23 = load float, float* %14, align 4
  %24 = fpext float %23 to double
  %25 = fmul double %24, 5.000000e-01
  %26 = fptrunc double %25 to float
  store float %26, float* %13, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %71, %4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @LP_FILTER_ORDER, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load float*, float** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float, float* %13, align 4
  %43 = fsub float 1.000000e+00, %42
  %44 = fmul float %41, %43
  %45 = load float, float* %13, align 4
  %46 = load float*, float** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fmul float %45, %50
  %52 = fadd float %44, %51
  %53 = fpext float %52 to double
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %18, i64 %55
  store double %53, double* %56, align 8
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %32

60:                                               ; preds = %32
  %61 = load float*, float** %7, align 8
  %62 = load i32, i32* @LP_FILTER_ORDER, align 4
  %63 = call i32 @ff_amrwb_lsp2lpc(double* %18, float* %61, i32 %62)
  %64 = load i32, i32* @LP_FILTER_ORDER, align 4
  %65 = load float*, float** %7, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds float, float* %65, i64 %66
  store float* %67, float** %7, align 8
  %68 = load float, float* %14, align 4
  %69 = load float, float* %13, align 4
  %70 = fadd float %69, %68
  store float %70, float* %13, align 4
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %27

74:                                               ; preds = %27
  %75 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %75)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ff_amrwb_lsp2lpc(double*, float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
