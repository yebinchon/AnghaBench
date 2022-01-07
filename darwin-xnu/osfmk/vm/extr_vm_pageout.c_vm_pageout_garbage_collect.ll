; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_garbage_collect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_garbage_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@vm_page_free_count = common dso_local global i64 0, align 8
@vm_page_free_target = common dso_local global i64 0, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_pageout_garbage_collect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %1
  %8 = call i64 (...) @is_zone_map_nearing_exhaustion()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i64, i64* @TRUE, align 8
  %12 = call i32 @consider_zone_gc(i64 %11)
  br label %46

13:                                               ; preds = %7
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %4, align 8
  %16 = call i32 (...) @stack_collect()
  %17 = call i32 (...) @consider_machine_collect()
  %18 = load i64, i64* @FALSE, align 8
  %19 = call i32 @mbuf_drain(i64 %18)
  br label %20

20:                                               ; preds = %42, %13
  %21 = call i64 @consider_buffer_cache_collect(i32 0)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @TRUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @TRUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %20
  %30 = load i64, i64* @FALSE, align 8
  %31 = call i32 @consider_zone_gc(i64 %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %32
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @TRUE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* @vm_page_free_count, align 8
  %40 = load i64, i64* @vm_page_free_target, align 8
  %41 = icmp slt i64 %39, %40
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  br i1 %43, label %20, label %44

44:                                               ; preds = %42
  %45 = call i32 (...) @consider_machine_adjust()
  br label %46

46:                                               ; preds = %44, %10
  br label %47

47:                                               ; preds = %46, %1
  %48 = load i32, i32* @THREAD_UNINT, align 4
  %49 = call i32 @assert_wait(i32 ptrtoint (void (i32)* @vm_pageout_garbage_collect to i32), i32 %48)
  %50 = call i32 @thread_block_parameter(i32 ptrtoint (void (i32)* @vm_pageout_garbage_collect to i32), i8* inttoptr (i64 1 to i8*))
  ret void
}

declare dso_local i64 @is_zone_map_nearing_exhaustion(...) #1

declare dso_local i32 @consider_zone_gc(i64) #1

declare dso_local i32 @stack_collect(...) #1

declare dso_local i32 @consider_machine_collect(...) #1

declare dso_local i32 @mbuf_drain(i64) #1

declare dso_local i64 @consider_buffer_cache_collect(i32) #1

declare dso_local i32 @consider_machine_adjust(...) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @thread_block_parameter(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
