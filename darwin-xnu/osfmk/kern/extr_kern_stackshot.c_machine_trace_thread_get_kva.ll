; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_machine_trace_thread_get_kva.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_machine_trace_thread_get_kva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prev_target_page = common dso_local global i64 0, align 8
@validate_next_addr = common dso_local global i64 0, align 8
@stack_enable_faulting = common dso_local global i32 0, align 4
@KDP_FAULT_RESULT_PAGED_OUT = common dso_local global i32 0, align 4
@kThreadTruncatedBT = common dso_local global i32 0, align 4
@KDP_FAULT_RESULT_TRIED_FAULT = common dso_local global i32 0, align 4
@kThreadTriedFaultBT = common dso_local global i32 0, align 4
@KDP_FAULT_RESULT_FAULTED_IN = common dso_local global i32 0, align 4
@kThreadFaultedBT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@prev_target_kva = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @machine_trace_thread_get_kva(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @atop(i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @prev_target_page, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @validate_next_addr, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @stack_enable_faulting, align 4
  %24 = call i64 @kdp_find_phys(i32 %21, i64 %22, i32 %23, i32* %11)
  store i64 %24, i64* %9, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %58

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @KDP_FAULT_RESULT_PAGED_OUT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @kThreadTruncatedBT, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @KDP_FAULT_RESULT_TRIED_FAULT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @kThreadTriedFaultBT, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @KDP_FAULT_RESULT_FAULTED_IN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @kThreadFaultedBT, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i64 0, i64* %4, align 8
  br label %79

62:                                               ; preds = %58
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @PHYSMAP_PTOV(i64 %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* @prev_target_page, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @PAGE_MASK, align 8
  %68 = xor i64 %67, -1
  %69 = and i64 %66, %68
  store i64 %69, i64* @prev_target_kva, align 8
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* @validate_next_addr, align 8
  br label %77

71:                                               ; preds = %17
  %72 = load i64, i64* @prev_target_kva, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @PAGE_MASK, align 8
  %75 = and i64 %73, %74
  %76 = add nsw i64 %72, %75
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %71, %62
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %77, %61
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local i64 @atop(i64) #1

declare dso_local i64 @kdp_find_phys(i32, i64, i32, i32*) #1

declare dso_local i64 @PHYSMAP_PTOV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
