; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soshutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soshutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@DBG_FNC_SOSHUTDOWN = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SS_ISCONNECTING = common dso_local global i32 0, align 4
@SS_ISDISCONNECTING = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soshutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @DBG_FNC_SOSHUTDOWN, align 4
  %7 = load i32, i32* @DBG_FUNC_START, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @KERNEL_DEBUG(i32 %8, i32 %9, i32 0, i32 0, i32 0, i32 0)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %34 [
    i32 130, label %12
    i32 128, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %2, %2, %2
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = call i32 @socket_lock(%struct.socket* %13, i32 1)
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SS_ISCONNECTED, align 4
  %19 = load i32, i32* @SS_ISCONNECTING, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SS_ISDISCONNECTING, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32, i32* @ENOTCONN, align 4
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %12
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @soshutdownlock(%struct.socket* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = call i32 @socket_unlock(%struct.socket* %32, i32 1)
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* @DBG_FNC_SOSHUTDOWN, align 4
  %38 = load i32, i32* @DBG_FUNC_END, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @KERNEL_DEBUG(i32 %39, i32 %40, i32 %41, i32 0, i32 0, i32 0)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @soshutdownlock(%struct.socket*, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
