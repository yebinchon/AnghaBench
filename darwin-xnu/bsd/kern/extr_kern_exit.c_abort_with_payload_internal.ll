; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_abort_with_payload_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_abort_with_payload_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@OS_REASON_NULL = common dso_local global i64 0, align 8
@OS_REASON_IFLAG_USER_FAULT = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@OS_REASON_TOTAL_USER_FAULTS_PER_PROC = common dso_local global i32 0, align 4
@EQFULL = common dso_local global i32 0, align 4
@DBG_BSD_PROC = common dso_local global i32 0, align 4
@BSD_PROC_EXITREASON_CREATE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@OS_REASON_FLAG_ABORT = common dso_local global i32 0, align 4
@GUARD_TYPE_USER = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32)* @abort_with_payload_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abort_with_payload_internal(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i64, i64* @OS_REASON_NULL, align 8
  store i64 %22, i64* %18, align 8
  store i32 128, i32* %19, align 4
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* @OS_REASON_IFLAG_USER_FAULT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* @memory_order_relaxed, align 4
  %31 = call i32 @atomic_load_explicit(i32* %29, i32 %30)
  store i32 %31, i32* %20, align 4
  br label %32

32:                                               ; preds = %48, %27
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* @OS_REASON_TOTAL_USER_FAULTS_PER_PROC, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @EQFULL, align 4
  store i32 %37, i32* %9, align 4
  br label %112

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %20, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* @memory_order_relaxed, align 4
  %44 = load i32, i32* @memory_order_relaxed, align 4
  %45 = call i64 @atomic_compare_exchange_strong_explicit(i32* %40, i32* %20, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %49

48:                                               ; preds = %38
  br label %32

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %8
  %51 = load i32, i32* @DBG_BSD_PROC, align 4
  %52 = load i32, i32* @BSD_PROC_EXITREASON_CREATE, align 4
  %53 = call i32 @BSDDBG_CODE(i32 %51, i32 %52)
  %54 = load i32, i32* @DBG_FUNC_NONE, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %55, i32 %58, i32 %59, i32 %60, i32 0, i32 0)
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @OS_REASON_FLAG_ABORT, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @build_userspace_exit_reason(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %69)
  store i64 %70, i64* %18, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @OS_REASON_IFLAG_USER_FAULT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %50
  store i32 0, i32* %21, align 4
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* @GUARD_TYPE_USER, align 4
  %78 = call i32 @EXC_GUARD_ENCODE_TYPE(i32 %76, i32 %77)
  %79 = load i32, i32* %21, align 4
  %80 = call i32 @EXC_GUARD_ENCODE_FLAVOR(i32 %79, i32 0)
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @EXC_GUARD_ENCODE_TARGET(i32 %81, i32 %82)
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* @OS_REASON_NULL, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  store i32 129, i32* %19, align 4
  br label %93

88:                                               ; preds = %75
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i64, i64* %18, align 8
  %92 = call i32 @task_violated_guard(i32 %89, i32 %90, i64 %91)
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %88, %87
  %94 = load i64, i64* %18, align 8
  %95 = call i32 @os_reason_free(i64 %94)
  br label %102

96:                                               ; preds = %50
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %98 = call i32 (...) @current_thread()
  %99 = load i32, i32* @SIGABRT, align 4
  %100 = load i64, i64* %18, align 8
  %101 = call i32 @psignal_try_thread_with_reason(%struct.TYPE_4__* %97, i32 %98, i32 %99, i64 %100)
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %19, align 4
  switch i32 %103, label %110 [
    i32 128, label %104
    i32 130, label %105
    i32 131, label %107
    i32 129, label %109
  ]

104:                                              ; preds = %102
  store i32 0, i32* %9, align 4
  br label %112

105:                                              ; preds = %102
  %106 = load i32, i32* @ENOTSUP, align 4
  store i32 %106, i32* %9, align 4
  br label %112

107:                                              ; preds = %102
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %9, align 4
  br label %112

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %102, %109
  %111 = load i32, i32* @EBUSY, align 4
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %110, %107, %105, %104, %36
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local i32 @atomic_load_explicit(i32*, i32) #1

declare dso_local i64 @atomic_compare_exchange_strong_explicit(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i64 @build_userspace_exit_reason(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EXC_GUARD_ENCODE_TYPE(i32, i32) #1

declare dso_local i32 @EXC_GUARD_ENCODE_FLAVOR(i32, i32) #1

declare dso_local i32 @EXC_GUARD_ENCODE_TARGET(i32, i32) #1

declare dso_local i32 @task_violated_guard(i32, i32, i64) #1

declare dso_local i32 @os_reason_free(i64) #1

declare dso_local i32 @psignal_try_thread_with_reason(%struct.TYPE_4__*, i32, i32, i64) #1

declare dso_local i32 @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
