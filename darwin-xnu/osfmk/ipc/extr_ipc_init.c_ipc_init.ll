; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_init.c_ipc_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_init.c_ipc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@kernel_map = common dso_local global i32 0, align 4
@ipc_kernel_map_size = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_IPC = common dso_local global i32 0, align 4
@ipc_kernel_map = common dso_local global %struct.TYPE_4__* null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"ipc_init: kmem_suballoc of ipc_kernel_map failed\00", align 1
@ipc_kernel_copy_map_size = common dso_local global i32 0, align 4
@ipc_kernel_copy_map = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"ipc_init: kmem_suballoc of ipc_kernel_copy_map failed\00", align 1
@kalloc_max_prerounded = common dso_local global i64 0, align 8
@MSG_OOL_SIZE_SMALL_MAX = common dso_local global i64 0, align 8
@msg_ool_size_small = common dso_local global i64 0, align 8
@cpy_kdata_hdr_sz = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @kernel_map, align 4
  %4 = load i32, i32* @ipc_kernel_map_size, align 4
  %5 = load i8*, i8** @TRUE, align 8
  %6 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %7 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %8 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %9 = call i64 @kmem_suballoc(i32 %3, i32* %2, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8, %struct.TYPE_4__** @ipc_kernel_map)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @KERN_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, i32* @kernel_map, align 4
  %17 = load i32, i32* @ipc_kernel_copy_map_size, align 4
  %18 = load i8*, i8** @TRUE, align 8
  %19 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %20 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %21 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %22 = call i64 @kmem_suballoc(i32 %16, i32* %2, i32 %17, i8* %18, i32 %19, i32 %20, i32 %21, %struct.TYPE_4__** @ipc_kernel_copy_map)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @KERN_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %15
  %29 = load i8*, i8** @TRUE, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipc_kernel_copy_map, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @TRUE, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipc_kernel_copy_map, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* @kalloc_max_prerounded, align 8
  %36 = load i64, i64* @MSG_OOL_SIZE_SMALL_MAX, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i64, i64* @kalloc_max_prerounded, align 8
  store i64 %39, i64* @msg_ool_size_small, align 8
  br label %42

40:                                               ; preds = %28
  %41 = load i64, i64* @MSG_OOL_SIZE_SMALL_MAX, align 8
  store i64 %41, i64* @msg_ool_size_small, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i64, i64* @cpy_kdata_hdr_sz, align 8
  %44 = load i64, i64* @msg_ool_size_small, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* @msg_ool_size_small, align 8
  %46 = call i32 (...) @ipc_host_init()
  %47 = call i32 (...) @ux_handler_init()
  ret void
}

declare dso_local i64 @kmem_suballoc(i32, i32*, i32, i8*, i32, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ipc_host_init(...) #1

declare dso_local i32 @ux_handler_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
