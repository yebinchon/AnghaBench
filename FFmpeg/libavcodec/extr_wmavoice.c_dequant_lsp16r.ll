; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_dequant_lsp16r.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_dequant_lsp16r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dequant_lsp16r.vec_sizes = internal constant [3 x i32] [i32 128, i32 128, i32 128], align 4
@dequant_lsp16r.mul_lsf = internal constant [3 x double] [double 0x3F540AE22C17A5CE, double 0x3F570A21AFC9CC72, double 0x3F5A67038D8ED5B0], align 16
@dequant_lsp16r.base_lsf = internal constant [3 x double] [double -7.146240e+00, double 0xC01B16C1E364BEC6, double 0xC01C0B9991361DC9], align 16
@wmavoice_lsp16_intercoeff_b = common dso_local global float*** null, align 8
@wmavoice_lsp16_intercoeff_a = common dso_local global float*** null, align 8
@wmavoice_dq_lsp16r1 = common dso_local global i32 0, align 4
@wmavoice_dq_lsp16r2 = common dso_local global i32 0, align 4
@wmavoice_dq_lsp16r3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double*, double*, double*, double*, i32)* @dequant_lsp16r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequant_lsp16r(i32* %0, double* %1, double* %2, double* %3, double* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x [16 x float]]*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store double* %1, double** %8, align 8
  store double* %2, double** %9, align 8
  store double* %3, double** %10, align 8
  store double* %4, double** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load float***, float**** @wmavoice_lsp16_intercoeff_b, align 8
  br label %24

22:                                               ; preds = %6
  %23 = load float***, float**** @wmavoice_lsp16_intercoeff_a, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi float*** [ %21, %20 ], [ %23, %22 ]
  %26 = bitcast float*** %25 to [2 x [16 x float]]*
  store [2 x [16 x float]]* %26, [2 x [16 x float]]** %13, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load double*, double** %8, align 8
  %29 = call i32 @dequant_lsp16i(i32* %27, double* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @get_bits(i32* %30, i32 5)
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @get_bits(i32* %32, i32 7)
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @get_bits(i32* %35, i32 7)
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @get_bits(i32* %38, i32 7)
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %101, %24
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 16
  br i1 %43, label %44, label %104

44:                                               ; preds = %41
  %45 = load double*, double** %9, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = load double*, double** %8, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  %55 = fsub double %49, %54
  store double %55, double* %17, align 8
  %56 = load [2 x [16 x float]]*, [2 x [16 x float]]** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x [16 x float]], [2 x [16 x float]]* %56, i64 %58
  %60 = getelementptr inbounds [2 x [16 x float]], [2 x [16 x float]]* %59, i64 0, i64 0
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [16 x float], [16 x float]* %60, i64 0, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = load double, double* %17, align 8
  %67 = fmul double %65, %66
  %68 = load double*, double** %8, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  %72 = load double, double* %71, align 8
  %73 = fadd double %67, %72
  %74 = load double*, double** %10, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  store double %73, double* %77, align 8
  %78 = load [2 x [16 x float]]*, [2 x [16 x float]]** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x [16 x float]], [2 x [16 x float]]* %78, i64 %80
  %82 = getelementptr inbounds [2 x [16 x float]], [2 x [16 x float]]* %81, i64 0, i64 1
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [16 x float], [16 x float]* %82, i64 0, i64 %84
  %86 = load float, float* %85, align 4
  %87 = fpext float %86 to double
  %88 = load double, double* %17, align 8
  %89 = fmul double %87, %88
  %90 = load double*, double** %8, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  %94 = load double, double* %93, align 8
  %95 = fadd double %89, %94
  %96 = load double*, double** %10, align 8
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 16, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %96, i64 %99
  store double %95, double* %100, align 8
  br label %101

101:                                              ; preds = %44
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %41

104:                                              ; preds = %41
  %105 = load double*, double** %11, align 8
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %107 = load i32, i32* @wmavoice_dq_lsp16r1, align 4
  %108 = call i32 @dequant_lsps(double* %105, i32 10, i32* %106, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dequant_lsp16r.vec_sizes, i64 0, i64 0), i32 1, i32 %107, double* getelementptr inbounds ([3 x double], [3 x double]* @dequant_lsp16r.mul_lsf, i64 0, i64 0), double* getelementptr inbounds ([3 x double], [3 x double]* @dequant_lsp16r.base_lsf, i64 0, i64 0))
  %109 = load double*, double** %11, align 8
  %110 = getelementptr inbounds double, double* %109, i64 10
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %112 = load i32, i32* @wmavoice_dq_lsp16r2, align 4
  %113 = call i32 @dequant_lsps(double* %110, i32 10, i32* %111, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dequant_lsp16r.vec_sizes, i64 0, i64 1), i32 1, i32 %112, double* getelementptr inbounds ([3 x double], [3 x double]* @dequant_lsp16r.mul_lsf, i64 0, i64 1), double* getelementptr inbounds ([3 x double], [3 x double]* @dequant_lsp16r.base_lsf, i64 0, i64 1))
  %114 = load double*, double** %11, align 8
  %115 = getelementptr inbounds double, double* %114, i64 20
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  %117 = load i32, i32* @wmavoice_dq_lsp16r3, align 4
  %118 = call i32 @dequant_lsps(double* %115, i32 12, i32* %116, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dequant_lsp16r.vec_sizes, i64 0, i64 2), i32 1, i32 %117, double* getelementptr inbounds ([3 x double], [3 x double]* @dequant_lsp16r.mul_lsf, i64 0, i64 2), double* getelementptr inbounds ([3 x double], [3 x double]* @dequant_lsp16r.base_lsf, i64 0, i64 2))
  ret void
}

declare dso_local i32 @dequant_lsp16i(i32*, double*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @dequant_lsps(double*, i32, i32*, i32*, i32, i32, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
