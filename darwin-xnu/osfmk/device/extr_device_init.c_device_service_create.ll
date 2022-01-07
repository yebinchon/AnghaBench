; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_device_init.c_device_service_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_device_init.c_device_service_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@master_device_port = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"can't allocate master device port\00", align 1
@master_device_kobject = common dso_local global i32 0, align 4
@IKOT_MASTER_DEVICE = common dso_local global i32 0, align 4
@HOST_IO_MASTER_PORT = common dso_local global i32 0, align 4
@dev_lck_grp_attr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@dev_lck_grp = common dso_local global i32 0, align 4
@dev_lck_attr = common dso_local global i32 0, align 4
@iokit_obj_to_port_binding_lock = common dso_local global i32 0, align 4
@io_done_thread = common dso_local global i32 0, align 4
@kernel_task = common dso_local global i32 0, align 4
@net_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_service_create() #0 {
  %1 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %1, i64* @master_device_port, align 8
  %2 = load i64, i64* @master_device_port, align 8
  %3 = load i64, i64* @IP_NULL, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i64, i64* @master_device_port, align 8
  %9 = load i32, i32* @IKOT_MASTER_DEVICE, align 4
  %10 = call i32 @ipc_kobject_set(i64 %8, i32 ptrtoint (i32* @master_device_kobject to i32), i32 %9)
  %11 = call i32 (...) @host_priv_self()
  %12 = load i32, i32* @HOST_IO_MASTER_PORT, align 4
  %13 = load i64, i64* @master_device_port, align 8
  %14 = call i32 @ipc_port_make_send(i64 %13)
  %15 = call i32 @kernel_set_special_port(i32 %11, i32 %12, i32 %14)
  %16 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %16, i32* @dev_lck_grp_attr, align 4
  %17 = load i32, i32* @dev_lck_grp_attr, align 4
  %18 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 %18, i32* @dev_lck_grp, align 4
  %19 = call i32 (...) @lck_attr_alloc_init()
  store i32 %19, i32* @dev_lck_attr, align 4
  %20 = load i32, i32* @dev_lck_grp, align 4
  %21 = load i32, i32* @dev_lck_attr, align 4
  %22 = call i32 @lck_mtx_init(i32* @iokit_obj_to_port_binding_lock, i32 %20, i32 %21)
  ret void
}

declare dso_local i64 @ipc_port_alloc_kernel(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ipc_kobject_set(i64, i32, i32) #1

declare dso_local i32 @kernel_set_special_port(i32, i32, i32) #1

declare dso_local i32 @host_priv_self(...) #1

declare dso_local i32 @ipc_port_make_send(i64) #1

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
