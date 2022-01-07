; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_free_now.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_free_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swapfile = type { i32, i32*, i32, i32, i32** }

@SWAP_READY = common dso_local global i32 0, align 4
@SWAP_RECLAIM = common dso_local global i32 0, align 4
@SWAP_SLOT_MASK = common dso_local global i32 0, align 4
@COMPRESSED_SWAP_CHUNK_SIZE = common dso_local global i32 0, align 4
@vm_swapfile_total_segs_used = common dso_local global i32 0, align 4
@vm_swapfile_gc_thread_running = common dso_local global i32 0, align 4
@vm_swapfile_gc_needed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swapfile*, i32)* @vm_swap_free_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_swap_free_now(%struct.swapfile* %0, i32 %1) #0 {
  %3 = alloca %struct.swapfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.swapfile* %0, %struct.swapfile** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %10 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SWAP_READY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %17 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SWAP_RECLAIM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %87

22:                                               ; preds = %15, %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SWAP_SLOT_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @COMPRESSED_SWAP_CHUNK_SIZE, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = lshr i32 %29, 3
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = urem i32 %31, 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %34 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %22
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %49 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %47
  store i32 %55, i32* %53, align 4
  %56 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %57 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %56, i32 0, i32 4
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  store i32* null, i32** %61, align 8
  %62 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %63 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @vm_swapfile_total_segs_used, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* @vm_swapfile_total_segs_used, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %70 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %44
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %76 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %44
  br label %78

78:                                               ; preds = %77, %22
  %79 = call i64 (...) @VM_SWAP_SHOULD_RECLAIM()
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* @vm_swapfile_gc_thread_running, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call i32 @thread_wakeup(i32 ptrtoint (i32* @vm_swapfile_gc_needed to i32))
  br label %86

86:                                               ; preds = %84, %81, %78
  br label %87

87:                                               ; preds = %86, %15
  ret void
}

declare dso_local i64 @VM_SWAP_SHOULD_RECLAIM(...) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
