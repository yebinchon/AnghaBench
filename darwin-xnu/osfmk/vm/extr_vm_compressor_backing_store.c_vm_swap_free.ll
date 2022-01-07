; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swapfile = type { i32, i32, %struct.trim_list* }
%struct.trim_list = type { i32, %struct.trim_list*, i32 }

@swp_trim_supported = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@vm_swap_data_lock = common dso_local global i32 0, align 4
@SWAP_READY = common dso_local global i32 0, align 4
@SWAP_RECLAIM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@vm_swap_free_now_count = common dso_local global i32 0, align 4
@SWAP_SLOT_MASK = common dso_local global i32 0, align 4
@COMPRESSED_SWAP_CHUNK_SIZE = common dso_local global i32 0, align 4
@vm_swapfile_create_thread_running = common dso_local global i32 0, align 4
@dont_trim_until_ts = common dso_local global i64 0, align 8
@vm_swapfile_create_needed = common dso_local global i32 0, align 4
@vm_swap_free_delayed_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_swap_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swapfile*, align 8
  %4 = alloca %struct.trim_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.swapfile* null, %struct.swapfile** %3, align 8
  store %struct.trim_list* null, %struct.trim_list** %4, align 8
  %7 = load i64, i64* @swp_trim_supported, align 8
  %8 = load i64, i64* @TRUE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call %struct.trim_list* @kalloc(i32 24)
  store %struct.trim_list* %11, %struct.trim_list** %4, align 8
  br label %12

12:                                               ; preds = %10, %1
  %13 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %14 = load i32, i32* %2, align 4
  %15 = call %struct.swapfile* @vm_swapfile_for_handle(i32 %14)
  store %struct.swapfile* %15, %struct.swapfile** %3, align 8
  %16 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %17 = icmp ne %struct.swapfile* %16, null
  br i1 %17, label %18, label %82

18:                                               ; preds = %12
  %19 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %20 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SWAP_READY, align 4
  %23 = load i32, i32* @SWAP_RECLAIM, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %82

27:                                               ; preds = %18
  %28 = load i64, i64* @swp_trim_supported, align 8
  %29 = load i64, i64* @FALSE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %33 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SWAP_RECLAIM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31, %27
  %39 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @vm_swap_free_now(%struct.swapfile* %39, i32 %40)
  %42 = load i32, i32* @vm_swap_free_now_count, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @vm_swap_free_now_count, align 4
  br label %83

44:                                               ; preds = %31
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @SWAP_SLOT_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.trim_list*, %struct.trim_list** %4, align 8
  %49 = getelementptr inbounds %struct.trim_list, %struct.trim_list* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @COMPRESSED_SWAP_CHUNK_SIZE, align 4
  %51 = load %struct.trim_list*, %struct.trim_list** %4, align 8
  %52 = getelementptr inbounds %struct.trim_list, %struct.trim_list* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %54 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %53, i32 0, i32 2
  %55 = load %struct.trim_list*, %struct.trim_list** %54, align 8
  %56 = load %struct.trim_list*, %struct.trim_list** %4, align 8
  %57 = getelementptr inbounds %struct.trim_list, %struct.trim_list* %56, i32 0, i32 1
  store %struct.trim_list* %55, %struct.trim_list** %57, align 8
  %58 = load %struct.trim_list*, %struct.trim_list** %4, align 8
  %59 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %60 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %59, i32 0, i32 2
  store %struct.trim_list* %58, %struct.trim_list** %60, align 8
  %61 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %62 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  store %struct.trim_list* null, %struct.trim_list** %4, align 8
  %65 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %66 = call i64 @VM_SWAP_SHOULD_TRIM(%struct.swapfile* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %44
  %69 = load i32, i32* @vm_swapfile_create_thread_running, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = call i32 @clock_get_system_nanotime(i64* %5, i32* %6)
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @dont_trim_until_ts, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 @thread_wakeup(i32 ptrtoint (i32* @vm_swapfile_create_needed to i32))
  br label %78

78:                                               ; preds = %76, %71
  br label %79

79:                                               ; preds = %78, %68, %44
  %80 = load i32, i32* @vm_swap_free_delayed_count, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @vm_swap_free_delayed_count, align 4
  br label %82

82:                                               ; preds = %79, %18, %12
  br label %83

83:                                               ; preds = %82, %38
  %84 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %85 = load %struct.trim_list*, %struct.trim_list** %4, align 8
  %86 = icmp ne %struct.trim_list* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.trim_list*, %struct.trim_list** %4, align 8
  %89 = call i32 @kfree(%struct.trim_list* %88, i32 24)
  br label %90

90:                                               ; preds = %87, %83
  ret void
}

declare dso_local %struct.trim_list* @kalloc(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local %struct.swapfile* @vm_swapfile_for_handle(i32) #1

declare dso_local i32 @vm_swap_free_now(%struct.swapfile*, i32) #1

declare dso_local i64 @VM_SWAP_SHOULD_TRIM(%struct.swapfile*) #1

declare dso_local i32 @clock_get_system_nanotime(i64*, i32*) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.trim_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
