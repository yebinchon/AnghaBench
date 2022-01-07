; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.swapfile = type { i32, i64, i32 }

@vm_swap_data_lock = common dso_local global i32 0, align 4
@SWAP_READY = common dso_local global i32 0, align 4
@SWAP_RECLAIM = common dso_local global i32 0, align 4
@SWAP_SLOT_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@SWAP_READ = common dso_local global i32 0, align 4
@swapins = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@vm_swap_get_failures = common dso_local global i32 0, align 4
@SWAP_WANTED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_swap_get(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.swapfile*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.swapfile* null, %struct.swapfile** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @assert(i64 %14)
  %16 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.swapfile* @vm_swapfile_for_handle(i32 %17)
  store %struct.swapfile* %18, %struct.swapfile** %8, align 8
  %19 = load %struct.swapfile*, %struct.swapfile** %8, align 8
  %20 = icmp eq %struct.swapfile* %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %3
  %22 = load %struct.swapfile*, %struct.swapfile** %8, align 8
  %23 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SWAP_READY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load %struct.swapfile*, %struct.swapfile** %8, align 8
  %30 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SWAP_RECLAIM, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %3
  store i32 1, i32* %10, align 4
  br label %101

36:                                               ; preds = %28, %21
  %37 = load %struct.swapfile*, %struct.swapfile** %8, align 8
  %38 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SWAP_SLOT_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.swapfile*, %struct.swapfile** %8, align 8
  %46 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PAGE_SIZE_64, align 4
  %56 = sdiv i32 %54, %55
  %57 = load i32, i32* @SWAP_READ, align 4
  %58 = call i32 @vm_swapfile_io(i32 %47, i32 %48, i32 %53, i32 %56, i32 %57, i32* null)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %36
  %62 = load i32, i32* @swapins, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = call i32 @VM_STAT_INCR_BY(i32 %62, i32 %65)
  br label %70

67:                                               ; preds = %36
  %68 = load i32, i32* @vm_swap_get_failures, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @vm_swap_get_failures, align 4
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @vm_swap_free(i32 %71)
  %73 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %74 = load %struct.swapfile*, %struct.swapfile** %8, align 8
  %75 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.swapfile*, %struct.swapfile** %8, align 8
  %79 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SWAP_WANTED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %70
  %85 = load %struct.swapfile*, %struct.swapfile** %8, align 8
  %86 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load i32, i32* @SWAP_WANTED, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.swapfile*, %struct.swapfile** %8, align 8
  %93 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.swapfile*, %struct.swapfile** %8, align 8
  %97 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %96, i32 0, i32 0
  %98 = ptrtoint i32* %97 to i32
  %99 = call i32 @thread_wakeup(i32 %98)
  br label %100

100:                                              ; preds = %89, %84, %70
  br label %101

101:                                              ; preds = %100, %35
  %102 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %106, i32* %4, align 4
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local %struct.swapfile* @vm_swapfile_for_handle(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @vm_swapfile_io(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VM_STAT_INCR_BY(i32, i32) #1

declare dso_local i32 @vm_swap_free(i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
