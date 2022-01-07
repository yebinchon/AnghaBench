; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapout_find_done_soc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapout_find_done_soc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swapout_io_completion = type { i64 }

@vm_swapout_soc_done = common dso_local global i64 0, align 8
@VM_SWAPOUT_LIMIT_MAX = common dso_local global i32 0, align 4
@vm_swapout_ctx = common dso_local global %struct.swapout_io_completion* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.swapout_io_completion* ()* @vm_swapout_find_done_soc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.swapout_io_completion* @vm_swapout_find_done_soc() #0 {
  %1 = alloca %struct.swapout_io_completion*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @vm_swapout_soc_done, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %24, %5
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @VM_SWAPOUT_LIMIT_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** @vm_swapout_ctx, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %11, i64 %13
  %15 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** @vm_swapout_ctx, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %19, i64 %21
  store %struct.swapout_io_completion* %22, %struct.swapout_io_completion** %1, align 8
  br label %29

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %6

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %0
  store %struct.swapout_io_completion* null, %struct.swapout_io_completion** %1, align 8
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %1, align 8
  ret %struct.swapout_io_completion* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
