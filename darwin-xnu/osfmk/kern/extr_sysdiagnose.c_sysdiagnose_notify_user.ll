; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sysdiagnose.c_sysdiagnose_notify_user.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sysdiagnose.c_sysdiagnose_notify_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i64 0, align 8
@DBG_MACH_SYSDIAGNOSE = common dso_local global i32 0, align 4
@SYSDIAGNOSE_NOTIFY_USER = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sysdiagnose_notify_user(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @host_priv_self()
  %7 = call i64 @host_get_sysdiagnose_port(i32 %6, i32* %4)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @KERN_SUCCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @IPC_PORT_VALID(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11, %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %30

17:                                               ; preds = %11
  %18 = load i32, i32* @DBG_MACH_SYSDIAGNOSE, align 4
  %19 = load i32, i32* @SYSDIAGNOSE_NOTIFY_USER, align 4
  %20 = call i32 @MACHDBG_CODE(i32 %18, i32 %19)
  %21 = load i32, i32* @DBG_FUNC_START, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %22, i32 0, i32 0, i32 0, i32 0, i32 0)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @send_sysdiagnose_notification(i32 %24, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ipc_port_release_send(i32 %27)
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %17, %15
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare dso_local i64 @host_get_sysdiagnose_port(i32, i32*) #1

declare dso_local i32 @host_priv_self(...) #1

declare dso_local i32 @IPC_PORT_VALID(i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i64 @send_sysdiagnose_notification(i32, i32) #1

declare dso_local i32 @ipc_port_release_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
