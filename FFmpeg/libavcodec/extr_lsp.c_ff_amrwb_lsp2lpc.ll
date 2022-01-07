; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lsp.c_ff_amrwb_lsp2lpc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lsp.c_ff_amrwb_lsp2lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LP_HALF_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_amrwb_lsp2lpc(double* %0, float* %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double* %0, double** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @MAX_LP_HALF_ORDER, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca double, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @MAX_LP_HALF_ORDER, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = alloca double, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %27 = getelementptr inbounds double, double* %22, i64 1
  store double* %27, double** %11, align 8
  %28 = load double*, double** %11, align 8
  %29 = getelementptr inbounds double, double* %28, i64 -1
  store double 0.000000e+00, double* %29, align 8
  %30 = load double*, double** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ff_lsp2polyf(double* %30, double* %26, i32 %31)
  %33 = load double*, double** %4, align 8
  %34 = getelementptr inbounds double, double* %33, i64 1
  %35 = load double*, double** %11, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @ff_lsp2polyf(double* %34, double* %35, i32 %37)
  store i32 1, i32* %12, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %98, %3
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %103

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %26, i64 %47
  %49 = load double, double* %48, align 8
  %50 = load double*, double** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %50, i64 %53
  %55 = load double, double* %54, align 8
  %56 = fadd double 1.000000e+00, %55
  %57 = fmul double %49, %56
  store double %57, double* %14, align 8
  %58 = load double*, double** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %58, i64 %60
  %62 = load double, double* %61, align 8
  %63 = load double*, double** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %63, i64 %66
  %68 = load double, double* %67, align 8
  %69 = fsub double %62, %68
  %70 = load double*, double** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %70, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fsub double 1.000000e+00, %75
  %77 = fmul double %69, %76
  store double %77, double* %15, align 8
  %78 = load double, double* %14, align 8
  %79 = load double, double* %15, align 8
  %80 = fadd double %78, %79
  %81 = fmul double %80, 5.000000e-01
  %82 = fptrunc double %81 to float
  %83 = load float*, float** %5, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %83, i64 %86
  store float %82, float* %87, align 4
  %88 = load double, double* %14, align 8
  %89 = load double, double* %15, align 8
  %90 = fsub double %88, %89
  %91 = fmul double %90, 5.000000e-01
  %92 = fptrunc double %91 to float
  %93 = load float*, float** %5, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %93, i64 %96
  store float %92, float* %97, align 4
  br label %98

98:                                               ; preds = %45
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %13, align 4
  br label %41

103:                                              ; preds = %41
  %104 = load double*, double** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %104, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fadd double 1.000000e+00, %109
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %26, i64 %112
  %114 = load double, double* %113, align 8
  %115 = fmul double %110, %114
  %116 = fmul double %115, 5.000000e-01
  %117 = fptrunc double %116 to float
  %118 = load float*, float** %5, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %118, i64 %121
  store float %117, float* %122, align 4
  %123 = load double*, double** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, double* %123, i64 %126
  %128 = load double, double* %127, align 8
  %129 = fptrunc double %128 to float
  %130 = load float*, float** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %130, i64 %133
  store float %129, float* %134, align 4
  %135 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %135)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

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
