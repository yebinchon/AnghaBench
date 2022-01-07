; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_ShouldUseComplexStaticContextMap.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_ShouldUseComplexStaticContextMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ShouldUseComplexStaticContextMap.kStaticContextMapComplexUTF8 = internal constant [64 x i32] [i32 11, i32 11, i32 12, i32 12, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 9, i32 9, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 8, i32 3, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 8, i32 4, i32 4, i32 4, i32 8, i32 7, i32 4, i32 4, i32 8, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 5, i32 5, i32 10, i32 5, i32 5, i32 5, i32 10, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6], align 16
@BROTLI_FALSE = common dso_local global i32 0, align 4
@CONTEXT_UTF8 = common dso_local global i32 0, align 4
@BROTLI_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i32, i64, i64*, i32**)* @ShouldUseComplexStaticContextMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShouldUseComplexStaticContextMap(i32* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, i64* %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i64, align 8
  %19 = alloca [32 x i32], align 16
  %20 = alloca [13 x [32 x i32]], align 16
  %21 = alloca i32, align 4
  %22 = alloca [3 x double], align 16
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i32** %7, i32*** %17, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @BROTLI_UNUSED(i32 %32)
  %34 = load i64, i64* %15, align 8
  %35 = icmp ult i64 %34, 1048576
  br i1 %35, label %36, label %38

36:                                               ; preds = %8
  %37 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %37, i32* %9, align 4
  br label %162

38:                                               ; preds = %8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %18, align 8
  %42 = bitcast [32 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 128, i1 false)
  %43 = bitcast [13 x [32 x i32]]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 1664, i1 false)
  store i32 0, i32* %21, align 4
  %44 = load i32, i32* @CONTEXT_UTF8, align 4
  %45 = call i32 @BROTLI_CONTEXT_LUT(i32 %44)
  store i32 %45, i32* %25, align 4
  br label %46

46:                                               ; preds = %109, %38
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 64
  %49 = load i64, i64* %18, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %112

51:                                               ; preds = %46
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 64
  store i64 %53, i64* %26, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %13, align 8
  %57 = and i64 %55, %56
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %27, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  %63 = load i64, i64* %13, align 8
  %64 = and i64 %62, %63
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %28, align 4
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 2
  store i64 %68, i64* %29, align 8
  br label %69

69:                                               ; preds = %105, %51
  %70 = load i64, i64* %29, align 8
  %71 = load i64, i64* %26, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %69
  %74 = load i32*, i32** %10, align 8
  %75 = load i64, i64* %29, align 8
  %76 = load i64, i64* %13, align 8
  %77 = and i64 %75, %76
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %30, align 4
  %80 = load i32, i32* %28, align 4
  %81 = load i32, i32* %27, align 4
  %82 = load i32, i32* %25, align 4
  %83 = call i64 @BROTLI_CONTEXT(i32 %80, i32 %81, i32 %82)
  %84 = getelementptr inbounds [64 x i32], [64 x i32]* @ShouldUseComplexStaticContextMap.kStaticContextMapComplexUTF8, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %31, align 4
  %86 = load i32, i32* %21, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* %30, align 4
  %89 = ashr i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %31, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [13 x [32 x i32]], [13 x [32 x i32]]* %20, i64 0, i64 %95
  %97 = load i32, i32* %30, align 4
  %98 = ashr i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* %96, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %28, align 4
  store i32 %103, i32* %27, align 4
  %104 = load i32, i32* %30, align 4
  store i32 %104, i32* %28, align 4
  br label %105

105:                                              ; preds = %73
  %106 = load i64, i64* %29, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %29, align 8
  br label %69

108:                                              ; preds = %69
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %11, align 8
  %111 = add i64 %110, 4096
  store i64 %111, i64* %11, align 8
  br label %46

112:                                              ; preds = %46
  %113 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %114 = call double @ShannonEntropy(i32* %113, i32 32, i64* %23)
  %115 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  store double %114, double* %115, align 8
  %116 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  store double 0.000000e+00, double* %116, align 16
  store i64 0, i64* %24, align 8
  br label %117

117:                                              ; preds = %128, %112
  %118 = load i64, i64* %24, align 8
  %119 = icmp ult i64 %118, 13
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load i64, i64* %24, align 8
  %122 = getelementptr inbounds [13 x [32 x i32]], [13 x [32 x i32]]* %20, i64 0, i64 %121
  %123 = getelementptr inbounds [32 x i32], [32 x i32]* %122, i64 0, i64 0
  %124 = call double @ShannonEntropy(i32* %123, i32 32, i64* %23)
  %125 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  %126 = load double, double* %125, align 16
  %127 = fadd double %126, %124
  store double %127, double* %125, align 16
  br label %128

128:                                              ; preds = %120
  %129 = load i64, i64* %24, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %24, align 8
  br label %117

131:                                              ; preds = %117
  %132 = load i32, i32* %21, align 4
  %133 = sitofp i32 %132 to double
  %134 = fdiv double 1.000000e+00, %133
  %135 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 0
  store double %134, double* %135, align 16
  %136 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 0
  %137 = load double, double* %136, align 16
  %138 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  %139 = load double, double* %138, align 8
  %140 = fmul double %139, %137
  store double %140, double* %138, align 8
  %141 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 0
  %142 = load double, double* %141, align 16
  %143 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  %144 = load double, double* %143, align 16
  %145 = fmul double %144, %142
  store double %145, double* %143, align 16
  %146 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  %147 = load double, double* %146, align 16
  %148 = fcmp ogt double %147, 3.000000e+00
  br i1 %148, label %156, label %149

149:                                              ; preds = %131
  %150 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  %151 = load double, double* %150, align 8
  %152 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  %153 = load double, double* %152, align 16
  %154 = fsub double %151, %153
  %155 = fcmp olt double %154, 2.000000e-01
  br i1 %155, label %156, label %158

156:                                              ; preds = %149, %131
  %157 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %157, i32* %9, align 4
  br label %162

158:                                              ; preds = %149
  %159 = load i64*, i64** %16, align 8
  store i64 13, i64* %159, align 8
  %160 = load i32**, i32*** %17, align 8
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @ShouldUseComplexStaticContextMap.kStaticContextMapComplexUTF8, i64 0, i64 0), i32** %160, align 8
  %161 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %158, %156, %36
  %163 = load i32, i32* %9, align 4
  ret i32 %163
}

declare dso_local i32 @BROTLI_UNUSED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BROTLI_CONTEXT_LUT(i32) #1

declare dso_local i64 @BROTLI_CONTEXT(i32, i32, i32) #1

declare dso_local double @ShannonEntropy(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
