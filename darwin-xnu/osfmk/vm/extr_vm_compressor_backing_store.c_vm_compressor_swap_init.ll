; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_compressor_swap_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_compressor_swap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@vm_swap_data_lock_grp_attr = common dso_local global i32 0, align 4
@vm_swap_data_lock_grp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vm_swap_data\00", align 1
@vm_swap_data_lock_attr = common dso_local global i32 0, align 4
@vm_swap_data_lock = common dso_local global i32 0, align 4
@vm_swap_data_lock_ext = common dso_local global i32 0, align 4
@swf_global_queue = common dso_local global i32 0, align 4
@vm_swapout_thread = common dso_local global i64 0, align 8
@BASEPRI_VM = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"vm_swapout_thread: create failed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"VM_swapout\00", align 1
@vm_swapout_thread_id = common dso_local global i32 0, align 4
@vm_swapfile_create_thread = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"vm_swapfile_create_thread: create failed\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"VM_swapfile_create\00", align 1
@vm_swapfile_gc_thread = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"vm_swapfile_gc_thread: create failed\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"VM_swapfile_gc\00", align 1
@kernel_task = common dso_local global i32 0, align 4
@TASK_POLICY_INTERNAL = common dso_local global i32 0, align 4
@TASK_POLICY_IO = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_COMPRESSOR_TIER2 = common dso_local global i32 0, align 4
@TASK_POLICY_PASSIVE_IO = common dso_local global i32 0, align 4
@TASK_POLICY_ENABLE = common dso_local global i32 0, align 4
@VM_MAX_SWAP_FILE_NUM = common dso_local global i32 0, align 4
@vm_num_swap_files_config = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"VM Swap Subsystem is ON\0A\00", align 1
@c_overage_swapped_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_compressor_swap_init() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  %2 = call i32 @lck_grp_attr_setdefault(i32* @vm_swap_data_lock_grp_attr)
  %3 = call i32 @lck_grp_init(i32* @vm_swap_data_lock_grp, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* @vm_swap_data_lock_grp_attr)
  %4 = call i32 @lck_attr_setdefault(i32* @vm_swap_data_lock_attr)
  %5 = call i32 @lck_mtx_init_ext(i32* @vm_swap_data_lock, i32* @vm_swap_data_lock_ext, i32* @vm_swap_data_lock_grp, i32* @vm_swap_data_lock_attr)
  %6 = call i32 @queue_init(i32* @swf_global_queue)
  %7 = load i64, i64* @vm_swapout_thread, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @BASEPRI_VM, align 4
  %10 = call i64 @kernel_thread_start_priority(i32 %8, i32* null, i32 %9, %struct.TYPE_5__** %1)
  %11 = load i64, i64* @KERN_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = call i32 @thread_set_thread_name(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* @vm_swapout_thread_id, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %22 = call i32 @thread_deallocate(%struct.TYPE_5__* %21)
  %23 = load i64, i64* @vm_swapfile_create_thread, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @BASEPRI_VM, align 4
  %26 = call i64 @kernel_thread_start_priority(i32 %24, i32* null, i32 %25, %struct.TYPE_5__** %1)
  %27 = load i64, i64* @KERN_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %15
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %33 = call i32 @thread_set_thread_name(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %35 = call i32 @thread_deallocate(%struct.TYPE_5__* %34)
  %36 = load i64, i64* @vm_swapfile_gc_thread, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @BASEPRI_VM, align 4
  %39 = call i64 @kernel_thread_start_priority(i32 %37, i32* null, i32 %38, %struct.TYPE_5__** %1)
  %40 = load i64, i64* @KERN_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %46 = call i32 @thread_set_thread_name(%struct.TYPE_5__* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %48 = call i32 @thread_deallocate(%struct.TYPE_5__* %47)
  %49 = load i32, i32* @kernel_task, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %54 = load i32, i32* @TASK_POLICY_IO, align 4
  %55 = load i32, i32* @THROTTLE_LEVEL_COMPRESSOR_TIER2, align 4
  %56 = call i32 @proc_set_thread_policy_with_tid(i32 %49, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @kernel_task, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %62 = load i32, i32* @TASK_POLICY_PASSIVE_IO, align 4
  %63 = load i32, i32* @TASK_POLICY_ENABLE, align 4
  %64 = call i32 @proc_set_thread_policy_with_tid(i32 %57, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @VM_MAX_SWAP_FILE_NUM, align 4
  store i32 %65, i32* @vm_num_swap_files_config, align 4
  %66 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lck_grp_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_init(i32*, i8*, i32*) #1

declare dso_local i32 @lck_attr_setdefault(i32*) #1

declare dso_local i32 @lck_mtx_init_ext(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @queue_init(i32*) #1

declare dso_local i64 @kernel_thread_start_priority(i32, i32*, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @thread_set_thread_name(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @thread_deallocate(%struct.TYPE_5__*) #1

declare dso_local i32 @proc_set_thread_policy_with_tid(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
