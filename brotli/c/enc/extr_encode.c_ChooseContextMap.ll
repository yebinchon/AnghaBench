; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_ChooseContextMap.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_ChooseContextMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ChooseContextMap.kStaticContextMapContinuation = internal constant <{ i32, i32, i32, i32, [60 x i32] }> <{ i32 1, i32 1, i32 2, i32 2, [60 x i32] zeroinitializer }>, align 16
@ChooseContextMap.kStaticContextMapSimpleUTF8 = internal constant <{ i32, i32, i32, i32, [60 x i32] }> <{ i32 0, i32 0, i32 1, i32 1, [60 x i32] zeroinitializer }>, align 16
@MIN_QUALITY_FOR_HQ_CONTEXT_MODELING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64*, i32**)* @ChooseContextMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ChooseContextMap(i32 %0, i32* %1, i64* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca [6 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [4 x double], align 16
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32** %3, i32*** %8, align 8
  %15 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 12, i1 false)
  %16 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 24, i1 false)
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %39, %4
  %18 = load i64, i64* %12, align 8
  %19 = icmp ult i64 %18, 9
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %12, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %12, align 8
  %26 = urem i64 %25, 3
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %12, align 8
  %35 = urem i64 %34, 6
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %20
  %40 = load i64, i64* %12, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %12, align 8
  br label %17

42:                                               ; preds = %17
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %44 = call double @ShannonEntropy(i32* %43, i32 3, i64* %13)
  %45 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 1
  store double %44, double* %45, align 8
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %47 = call double @ShannonEntropy(i32* %46, i32 3, i64* %13)
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = call double @ShannonEntropy(i32* %49, i32 3, i64* %13)
  %51 = fadd double %47, %50
  %52 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 2
  store double %51, double* %52, align 16
  %53 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 3
  store double 0.000000e+00, double* %53, align 8
  store i64 0, i64* %12, align 8
  br label %54

54:                                               ; preds = %66, %42
  %55 = load i64, i64* %12, align 8
  %56 = icmp ult i64 %55, 3
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %12, align 8
  %60 = mul i64 3, %59
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call double @ShannonEntropy(i32* %61, i32 3, i64* %13)
  %63 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 3
  %64 = load double, double* %63, align 8
  %65 = fadd double %64, %62
  store double %65, double* %63, align 8
  br label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %54

69:                                               ; preds = %54
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %71, %73
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %74, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @BROTLI_DCHECK(i32 %81)
  %83 = load i64, i64* %11, align 8
  %84 = uitofp i64 %83 to double
  %85 = fdiv double 1.000000e+00, %84
  %86 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 0
  store double %85, double* %86, align 16
  %87 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 0
  %88 = load double, double* %87, align 16
  %89 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 1
  %90 = load double, double* %89, align 8
  %91 = fmul double %90, %88
  store double %91, double* %89, align 8
  %92 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 0
  %93 = load double, double* %92, align 16
  %94 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 2
  %95 = load double, double* %94, align 16
  %96 = fmul double %95, %93
  store double %96, double* %94, align 16
  %97 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 0
  %98 = load double, double* %97, align 16
  %99 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 3
  %100 = load double, double* %99, align 8
  %101 = fmul double %100, %98
  store double %101, double* %99, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @MIN_QUALITY_FOR_HQ_CONTEXT_MODELING, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %69
  %106 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 1
  %107 = load double, double* %106, align 8
  %108 = fmul double %107, 1.000000e+01
  %109 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 3
  store double %108, double* %109, align 8
  br label %110

110:                                              ; preds = %105, %69
  %111 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 1
  %112 = load double, double* %111, align 8
  %113 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 2
  %114 = load double, double* %113, align 16
  %115 = fsub double %112, %114
  %116 = fcmp olt double %115, 2.000000e-01
  br i1 %116, label %117, label %126

117:                                              ; preds = %110
  %118 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 1
  %119 = load double, double* %118, align 8
  %120 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 3
  %121 = load double, double* %120, align 8
  %122 = fsub double %119, %121
  %123 = fcmp olt double %122, 2.000000e-01
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i64*, i64** %7, align 8
  store i64 1, i64* %125, align 8
  br label %140

126:                                              ; preds = %117, %110
  %127 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 2
  %128 = load double, double* %127, align 16
  %129 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 3
  %130 = load double, double* %129, align 8
  %131 = fsub double %128, %130
  %132 = fcmp olt double %131, 2.000000e-02
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i64*, i64** %7, align 8
  store i64 2, i64* %134, align 8
  %135 = load i32**, i32*** %8, align 8
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* bitcast (<{ i32, i32, i32, i32, [60 x i32] }>* @ChooseContextMap.kStaticContextMapSimpleUTF8 to [64 x i32]*), i64 0, i64 0), i32** %135, align 8
  br label %139

136:                                              ; preds = %126
  %137 = load i64*, i64** %7, align 8
  store i64 3, i64* %137, align 8
  %138 = load i32**, i32*** %8, align 8
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* bitcast (<{ i32, i32, i32, i32, [60 x i32] }>* @ChooseContextMap.kStaticContextMapContinuation to [64 x i32]*), i64 0, i64 0), i32** %138, align 8
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %124
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local double @ShannonEntropy(i32*, i32, i64*) #2

declare dso_local i32 @BROTLI_DCHECK(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
