; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/atm/extr_atm.c_atm_send_user_notification.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/atm/extr_atm.c_atm_send_user_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@MACH_SEND_TIMED_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atm_send_user_notification(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = call i32 (...) @current_thread()
  store i32 %18, i32* %16, align 4
  %19 = call i32 (...) @host_priv_self()
  %20 = call i32 @host_get_atm_notification_port(i32 %19, i32* %14)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @KERN_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @IPC_PORT_VALID(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %6
  %29 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %29, i32* %7, align 4
  br label %58

30:                                               ; preds = %24
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @thread_set_honor_qlimit(i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @atm_collect_trace_info(i32 %33, i32 %34, i32 %35, i32 %36, i32* %37, i32 %38, i32* %39, i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @thread_clear_honor_qlimit(i32 %42)
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* @KERN_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %30
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @ipc_port_release_send(i32 %48)
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* @MACH_SEND_TIMED_OUT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %28
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @host_get_atm_notification_port(i32, i32*) #1

declare dso_local i32 @host_priv_self(...) #1

declare dso_local i32 @IPC_PORT_VALID(i32) #1

declare dso_local i32 @thread_set_honor_qlimit(i32) #1

declare dso_local i32 @atm_collect_trace_info(i32, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @thread_clear_honor_qlimit(i32) #1

declare dso_local i32 @ipc_port_release_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
