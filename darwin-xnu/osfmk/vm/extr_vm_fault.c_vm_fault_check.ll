; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_fault_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_fault_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@VM_PAGE_NULL = common dso_local global i64 0, align 8
@VM_FAULT_MEMORY_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@vmf_check_zfdelay = common dso_local global i32 0, align 4
@VMF_CHECK_ZFDELAY = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@VM_FAULT_INTERRUPTED = common dso_local global i32 0, align 4
@VM_FAULT_MEMORY_SHORTAGE = common dso_local global i32 0, align 4
@VM_FAULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i64, i32, i64)* @vm_fault_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_fault_check(%struct.TYPE_5__* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = call i64 @VM_OBJECT_PURGEABLE_FAULT_ERROR(%struct.TYPE_5__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17, %5
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @VM_PAGE_NULL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @VM_PAGE_FREE(i64 %26)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @vm_fault_cleanup(%struct.TYPE_5__* %29, i64 %30)
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @thread_interrupt_level(i32 %32)
  %34 = load i32, i32* @VM_FAULT_MEMORY_ERROR, align 4
  store i32 %34, i32* %6, align 4
  br label %74

35:                                               ; preds = %17
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @TRUE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @vm_page_throttled(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @VM_PAGE_NULL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @VM_PAGE_FREE(i64 %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @vm_fault_cleanup(%struct.TYPE_5__* %51, i64 %52)
  %54 = load i32, i32* @vmf_check_zfdelay, align 4
  %55 = load i32, i32* @VMF_CHECK_ZFDELAY, align 4
  %56 = load i32, i32* @DBG_FUNC_NONE, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @VM_DEBUG_EVENT(i32 %54, i32 %55, i32 %56, i32 %57, i32 0, i32 0, i32 0)
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @delay(i32 %59)
  %61 = call i64 (...) @current_thread_aborted()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @thread_interrupt_level(i32 %64)
  %66 = load i32, i32* @VM_FAULT_INTERRUPTED, align 4
  store i32 %66, i32* %6, align 4
  br label %74

67:                                               ; preds = %50
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @thread_interrupt_level(i32 %68)
  %70 = load i32, i32* @VM_FAULT_MEMORY_SHORTAGE, align 4
  store i32 %70, i32* %6, align 4
  br label %74

71:                                               ; preds = %39
  br label %72

72:                                               ; preds = %71, %35
  %73 = load i32, i32* @VM_FAULT_SUCCESS, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %67, %63, %28
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @VM_OBJECT_PURGEABLE_FAULT_ERROR(%struct.TYPE_5__*) #1

declare dso_local i32 @VM_PAGE_FREE(i64) #1

declare dso_local i32 @vm_fault_cleanup(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @thread_interrupt_level(i32) #1

declare dso_local i32 @vm_page_throttled(i32) #1

declare dso_local i32 @VM_DEBUG_EVENT(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i64 @current_thread_aborted(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
