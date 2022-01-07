; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_stack.c_stack_collect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_stack.c_stack_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack_collect_tick = common dso_local global i64 0, align 8
@last_stack_tick = common dso_local global i64 0, align 8
@stack_free_target = common dso_local global i32 0, align 4
@STACK_CACHE_SIZE = common dso_local global i32 0, align 4
@processor_count = common dso_local global i32 0, align 4
@stack_free_delta = common dso_local global i64 0, align 8
@stack_free_count = common dso_local global i32 0, align 4
@stack_free_list = common dso_local global i64 0, align 8
@stack_total = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@kernel_stack_size = common dso_local global i64 0, align 8
@VM_MAP_REMOVE_KUNWIRE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"stack_collect: vm_map_remove\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_collect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @stack_collect_tick, align 8
  %5 = load i64, i64* @last_stack_tick, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %92

7:                                                ; preds = %0
  %8 = call i32 (...) @splsched()
  store i32 %8, i32* %3, align 4
  %9 = call i32 (...) @stack_lock()
  %10 = load i32, i32* @stack_free_target, align 4
  %11 = load i32, i32* @STACK_CACHE_SIZE, align 4
  %12 = load i32, i32* @processor_count, align 4
  %13 = mul i32 %11, %12
  %14 = add i32 %10, %13
  store i32 %14, i32* %1, align 4
  %15 = load i64, i64* @stack_free_delta, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = load i64, i64* @stack_free_delta, align 8
  br label %22

19:                                               ; preds = %7
  %20 = load i64, i64* @stack_free_delta, align 8
  %21 = sub nsw i64 0, %20
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i64 [ %18, %17 ], [ %21, %19 ]
  %24 = load i32, i32* %1, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %81, %22
  %29 = load i32, i32* @stack_free_count, align 4
  %30 = load i32, i32* %1, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %87

32:                                               ; preds = %28
  %33 = load i64, i64* @stack_free_list, align 8
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = call i64 @stack_next(i64 %34)
  store i64 %35, i64* @stack_free_list, align 8
  %36 = load i32, i32* @stack_free_count, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* @stack_free_count, align 4
  %38 = load i32, i32* @stack_total, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @stack_total, align 4
  %40 = call i32 (...) @stack_unlock()
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @splx(i32 %41)
  %43 = load i64, i64* %2, align 8
  %44 = load i32, i32* @kernel_map, align 4
  %45 = call i32 @VM_MAP_PAGE_MASK(i32 %44)
  %46 = call i64 @vm_map_trunc_page(i64 %43, i32 %45)
  store i64 %46, i64* %2, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %2, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, i64* %2, align 8
  %51 = load i32, i32* @kernel_map, align 4
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* @kernel_stack_size, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = mul nsw i32 2, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = load i32, i32* @VM_MAP_REMOVE_KUNWIRE, align 4
  %61 = call i64 @vm_map_remove(i32 %51, i64 %52, i64 %59, i32 %60)
  %62 = load i64, i64* @KERN_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %32
  %65 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %32
  store i64 0, i64* %2, align 8
  %67 = call i32 (...) @splsched()
  store i32 %67, i32* %3, align 4
  %68 = call i32 (...) @stack_lock()
  %69 = load i32, i32* @stack_free_target, align 4
  %70 = load i32, i32* @STACK_CACHE_SIZE, align 4
  %71 = load i32, i32* @processor_count, align 4
  %72 = mul i32 %70, %71
  %73 = add i32 %69, %72
  store i32 %73, i32* %1, align 4
  %74 = load i64, i64* @stack_free_delta, align 8
  %75 = icmp sge i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i64, i64* @stack_free_delta, align 8
  br label %81

78:                                               ; preds = %66
  %79 = load i64, i64* @stack_free_delta, align 8
  %80 = sub nsw i64 0, %79
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi i64 [ %77, %76 ], [ %80, %78 ]
  %83 = load i32, i32* %1, align 4
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %1, align 4
  br label %28

87:                                               ; preds = %28
  %88 = load i64, i64* @stack_collect_tick, align 8
  store i64 %88, i64* @last_stack_tick, align 8
  %89 = call i32 (...) @stack_unlock()
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @splx(i32 %90)
  br label %92

92:                                               ; preds = %87, %0
  ret void
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @stack_lock(...) #1

declare dso_local i64 @stack_next(i64) #1

declare dso_local i32 @stack_unlock(...) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i64 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i64 @vm_map_remove(i32, i64, i64, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
