; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/blas/cpu_sys/extr__ccv_nnc_gemm_cpu_sys.c__ccv_nnc_gemm_forw_cpu_sys.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/blas/cpu_sys/extr__ccv_nnc_gemm_cpu_sys.c__ccv_nnc_gemm_forw_cpu_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_19__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64* }

@CCV_NNC_EXEC_INVALID = common dso_local global i32 0, align 4
@CCV_32F = common dso_local global i32 0, align 4
@CCV_B_TRANSPOSE = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@CCV_NNC_EXEC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ccv_nnc_gemm_forw_cpu_sys(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %9 = load i32, i32* @CCV_NNC_EXEC_INVALID, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
