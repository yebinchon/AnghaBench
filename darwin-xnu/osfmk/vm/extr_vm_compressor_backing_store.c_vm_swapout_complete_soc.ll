; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapout_complete_soc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapout_complete_soc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swapout_io_completion = type { i64, i64, i32, i32, i32, i64, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@c_list_lock = common dso_local global i32 0, align 4
@vm_swapout_soc_busy = common dso_local global i32 0, align 4
@vm_swapout_soc_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swapout_io_completion*)* @vm_swapout_complete_soc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_swapout_complete_soc(%struct.swapout_io_completion* %0) #0 {
  %2 = alloca %struct.swapout_io_completion*, align 8
  %3 = alloca i32, align 4
  store %struct.swapout_io_completion* %0, %struct.swapout_io_completion** %2, align 8
  %4 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %2, align 8
  %5 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %9, i32* %3, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32, i32* @c_list_lock, align 4
  %14 = call i32 @lck_mtx_unlock_always(i32 %13)
  %15 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %2, align 8
  %16 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %2, align 8
  %19 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %18, i32 0, i32 3
  %20 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %2, align 8
  %21 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @vm_swap_put_finish(i32 %17, i32* %19, i64 %22)
  %24 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %2, align 8
  %25 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %2, align 8
  %28 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %2, align 8
  %31 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @vm_swapout_finish(i32 %26, i32 %29, i32 %32, i32 %33)
  %35 = load i32, i32* @c_list_lock, align 4
  %36 = call i32 @lck_mtx_lock_spin_always(i32 %35)
  %37 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %2, align 8
  %38 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %2, align 8
  %40 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @vm_swapout_soc_busy, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @vm_swapout_soc_busy, align 4
  %43 = load i32, i32* @vm_swapout_soc_done, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* @vm_swapout_soc_done, align 4
  ret void
}

declare dso_local i32 @lck_mtx_unlock_always(i32) #1

declare dso_local i32 @vm_swap_put_finish(i32, i32*, i64) #1

declare dso_local i32 @vm_swapout_finish(i32, i32, i32, i32) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
