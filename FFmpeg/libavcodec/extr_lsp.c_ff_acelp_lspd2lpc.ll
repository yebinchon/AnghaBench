; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lsp.c_ff_acelp_lspd2lpc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lsp.c_ff_acelp_lspd2lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LP_HALF_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_acelp_lspd2lpc(double* %0, float* %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double* %0, double** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @MAX_LP_HALF_ORDER, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca double, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @MAX_LP_HALF_ORDER, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = alloca double, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load float*, float** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %22, i64 %25
  %27 = getelementptr inbounds float, float* %26, i64 -1
  store float* %27, float** %10, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MAX_LP_HALF_ORDER, align 4
  %30 = icmp sle i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @av_assert2(i32 %31)
  %33 = load double*, double** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ff_lsp2polyf(double* %33, double* %17, i32 %34)
  %36 = load double*, double** %4, align 8
  %37 = getelementptr inbounds double, double* %36, i64 1
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ff_lsp2polyf(double* %37, double* %21, i32 %38)
  br label %40

40:                                               ; preds = %44, %3
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %17, i64 %47
  %49 = load double, double* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %17, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fadd double %49, %53
  store double %54, double* %11, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %21, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %21, i64 %61
  %63 = load double, double* %62, align 8
  %64 = fsub double %59, %63
  store double %64, double* %12, align 8
  %65 = load double, double* %11, align 8
  %66 = load double, double* %12, align 8
  %67 = fadd double %65, %66
  %68 = fmul double 5.000000e-01, %67
  %69 = fptrunc double %68 to float
  %70 = load float*, float** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  store float %69, float* %73, align 4
  %74 = load double, double* %11, align 8
  %75 = load double, double* %12, align 8
  %76 = fsub double %74, %75
  %77 = fmul double 5.000000e-01, %76
  %78 = fptrunc double %77 to float
  %79 = load float*, float** %10, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 0, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %79, i64 %82
  store float %78, float* %83, align 4
  br label %40

84:                                               ; preds = %40
  %85 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_assert2(i32) #2

declare dso_local i32 @ff_lsp2polyf(double*, double*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
