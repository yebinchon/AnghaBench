; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_get_sockev_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_get_sockev_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SOCKEV_CONNECTED = common dso_local global i32 0, align 4
@SS_ISDISCONNECTED = common dso_local global i32 0, align 4
@SOCKEV_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_sockev_state(%struct.socket* %0, i32* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %43

11:                                               ; preds = %2
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SS_ISCONNECTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @SOCKEV_CONNECTED, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %11
  %23 = load i32, i32* @SOCKEV_CONNECTED, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SS_ISDISCONNECTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @SOCKEV_DISCONNECTED, align 4
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
