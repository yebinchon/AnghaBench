; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_low_on_space.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_low_on_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_num_swap_files = common dso_local global i64 0, align 8
@vm_swapfile_can_be_created = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@vm_swapfile_total_segs_alloced = common dso_local global i32 0, align 4
@vm_swapfile_total_segs_used = common dso_local global i32 0, align 4
@VM_SWAPFILE_HIWATER_SEGS = common dso_local global i64 0, align 8
@vm_swapfile_last_failed_to_create_ts = common dso_local global i64 0, align 8
@vm_swapfile_last_successful_create_ts = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_swap_low_on_space() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @vm_num_swap_files, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i64, i64* @vm_swapfile_can_be_created, align 8
  %6 = load i64, i64* @FALSE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 0, i32* %1, align 4
  br label %31

9:                                                ; preds = %4, %0
  %10 = load i32, i32* @vm_swapfile_total_segs_alloced, align 4
  %11 = load i32, i32* @vm_swapfile_total_segs_used, align 4
  %12 = sub i32 %10, %11
  %13 = load i64, i64* @VM_SWAPFILE_HIWATER_SEGS, align 8
  %14 = trunc i64 %13 to i32
  %15 = udiv i32 %14, 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = load i64, i64* @vm_num_swap_files, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = call i32 (...) @SWAPPER_NEEDS_TO_UNTHROTTLE()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %31

24:                                               ; preds = %20, %17
  %25 = load i64, i64* @vm_swapfile_last_failed_to_create_ts, align 8
  %26 = load i64, i64* @vm_swapfile_last_successful_create_ts, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %1, align 4
  br label %31

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %9
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %30, %28, %23, %8
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @SWAPPER_NEEDS_TO_UNTHROTTLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
