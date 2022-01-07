; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapfile_for_handle.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapfile_for_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swapfile = type { i32, i32 }

@SWAP_SLOT_MASK = common dso_local global i32 0, align 4
@SWAP_DEVICE_SHIFT = common dso_local global i32 0, align 4
@swf_global_queue = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.swapfile* (i32)* @vm_swapfile_for_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.swapfile* @vm_swapfile_for_handle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.swapfile*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store %struct.swapfile* null, %struct.swapfile** %5, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @SWAP_SLOT_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @SWAP_DEVICE_SHIFT, align 4
  %11 = lshr i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = call i64 @queue_first(i32* @swf_global_queue)
  %13 = inttoptr i64 %12 to %struct.swapfile*
  store %struct.swapfile* %13, %struct.swapfile** %5, align 8
  br label %14

14:                                               ; preds = %27, %1
  %15 = load %struct.swapfile*, %struct.swapfile** %5, align 8
  %16 = ptrtoint %struct.swapfile* %15 to i32
  %17 = call i64 @queue_end(i32* @swf_global_queue, i32 %16)
  %18 = load i64, i64* @FALSE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.swapfile*, %struct.swapfile** %5, align 8
  %23 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %32

27:                                               ; preds = %20
  %28 = load %struct.swapfile*, %struct.swapfile** %5, align 8
  %29 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %28, i32 0, i32 1
  %30 = call i64 @queue_next(i32* %29)
  %31 = inttoptr i64 %30 to %struct.swapfile*
  store %struct.swapfile* %31, %struct.swapfile** %5, align 8
  br label %14

32:                                               ; preds = %26, %14
  %33 = load %struct.swapfile*, %struct.swapfile** %5, align 8
  %34 = ptrtoint %struct.swapfile* %33 to i32
  %35 = call i64 @queue_end(i32* @swf_global_queue, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store %struct.swapfile* null, %struct.swapfile** %5, align 8
  br label %38

38:                                               ; preds = %37, %32
  %39 = load %struct.swapfile*, %struct.swapfile** %5, align 8
  ret %struct.swapfile* %39
}

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i64 @queue_end(i32*, i32) #1

declare dso_local i64 @queue_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
