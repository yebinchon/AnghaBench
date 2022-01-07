; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_backward_references_hq.c_ZopfliCostModelSetFromLiteralCosts.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_backward_references_hq.c_ZopfliCostModelSetFromLiteralCosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float*, float*, i64, i64, float }

@BROTLI_NUM_COMMAND_SYMBOLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i32*, i64)* @ZopfliCostModelSetFromLiteralCosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZopfliCostModelSetFromLiteralCosts(%struct.TYPE_3__* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load float*, float** %16, align 8
  store float* %17, float** %9, align 8
  store float 0.000000e+00, float* %10, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load float*, float** %19, align 8
  store float* %20, float** %11, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load float*, float** %22, align 8
  store float* %23, float** %12, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load float*, float** %9, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  %33 = call i32 @BrotliEstimateBitCostsForLiterals(i64 %27, i64 %28, i64 %29, i32* %30, float* %32)
  %34 = load float*, float** %9, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  store float 0.000000e+00, float* %35, align 4
  store i64 0, i64* %14, align 8
  br label %36

36:                                               ; preds = %70, %4
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load float*, float** %9, align 8
  %42 = load i64, i64* %14, align 8
  %43 = add i64 %42, 1
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = load float, float* %10, align 4
  %47 = fadd float %46, %45
  store float %47, float* %10, align 4
  %48 = load float*, float** %9, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds float, float* %48, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load float, float* %10, align 4
  %53 = fadd float %51, %52
  %54 = load float*, float** %9, align 8
  %55 = load i64, i64* %14, align 8
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds float, float* %54, i64 %56
  store float %53, float* %57, align 4
  %58 = load float*, float** %9, align 8
  %59 = load i64, i64* %14, align 8
  %60 = add i64 %59, 1
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  %63 = load float*, float** %9, align 8
  %64 = load i64, i64* %14, align 8
  %65 = getelementptr inbounds float, float* %63, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fsub float %62, %66
  %68 = load float, float* %10, align 4
  %69 = fsub float %68, %67
  store float %69, float* %10, align 4
  br label %70

70:                                               ; preds = %40
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %14, align 8
  br label %36

73:                                               ; preds = %36
  store i64 0, i64* %14, align 8
  br label %74

74:                                               ; preds = %87, %73
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @BROTLI_NUM_COMMAND_SYMBOLS, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i64, i64* %14, align 8
  %80 = trunc i64 %79 to i32
  %81 = add nsw i32 11, %80
  %82 = call i64 @FastLog2(i32 %81)
  %83 = sitofp i64 %82 to float
  %84 = load float*, float** %12, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds float, float* %84, i64 %85
  store float %83, float* %86, align 4
  br label %87

87:                                               ; preds = %78
  %88 = load i64, i64* %14, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %14, align 8
  br label %74

90:                                               ; preds = %74
  store i64 0, i64* %14, align 8
  br label %91

91:                                               ; preds = %106, %90
  %92 = load i64, i64* %14, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load i64, i64* %14, align 8
  %99 = trunc i64 %98 to i32
  %100 = add nsw i32 20, %99
  %101 = call i64 @FastLog2(i32 %100)
  %102 = sitofp i64 %101 to float
  %103 = load float*, float** %11, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds float, float* %103, i64 %104
  store float %102, float* %105, align 4
  br label %106

106:                                              ; preds = %97
  %107 = load i64, i64* %14, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %14, align 8
  br label %91

109:                                              ; preds = %91
  %110 = call i64 @FastLog2(i32 11)
  %111 = sitofp i64 %110 to float
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  store float %111, float* %113, align 8
  ret void
}

declare dso_local i32 @BrotliEstimateBitCostsForLiterals(i64, i64, i64, i32*, float*) #1

declare dso_local i64 @FastLog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
