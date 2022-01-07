; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/blas/cpu_sys/extr__ccv_nnc_gemm_cpu_sys.c__ccv_nnc_gemm_back_cpu_sys.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/blas/cpu_sys/extr__ccv_nnc_gemm_cpu_sys.c__ccv_nnc_gemm_back_cpu_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { float*, i32 }
%struct.TYPE_13__ = type { i64* }

@CCV_NNC_EXEC_INVALID = common dso_local global i32 0, align 4
@CCV_32F = common dso_local global i32 0, align 4
@CCV_A_TRANSPOSE = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@CCV_NNC_ACCUMULATE_OUTPUT = common dso_local global i32 0, align 4
@CCV_NNC_EXEC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ccv_nnc_gemm_back_cpu_sys(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, %struct.TYPE_12__* %4, %struct.TYPE_12__* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* @CCV_NNC_EXEC_INVALID, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
