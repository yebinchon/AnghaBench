; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_soisdisconnecting.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_soisdisconnecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32 }

@SS_ISCONNECTING = common dso_local global i32 0, align 4
@SS_ISDISCONNECTING = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@SS_CANTSENDMORE = common dso_local global i32 0, align 4
@SO_FILT_HINT_LOCKED = common dso_local global i32 0, align 4
@sock_evt_disconnecting = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soisdisconnecting(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load i32, i32* @SS_ISCONNECTING, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @SS_ISDISCONNECTING, align 4
  %10 = load i32, i32* @SS_CANTRCVMORE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SS_CANTSENDMORE, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.socket*, %struct.socket** %2, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.socket*, %struct.socket** %2, align 8
  %19 = load i32, i32* @SO_FILT_HINT_LOCKED, align 4
  %20 = call i32 @soevent(%struct.socket* %18, i32 %19)
  %21 = load %struct.socket*, %struct.socket** %2, align 8
  %22 = load i32, i32* @sock_evt_disconnecting, align 4
  %23 = call i32 @sflt_notify(%struct.socket* %21, i32 %22, i32* null)
  %24 = load %struct.socket*, %struct.socket** %2, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = ptrtoint i32* %25 to i32
  %27 = call i32 @wakeup(i32 %26)
  %28 = load %struct.socket*, %struct.socket** %2, align 8
  %29 = call i32 @sowwakeup(%struct.socket* %28)
  %30 = load %struct.socket*, %struct.socket** %2, align 8
  %31 = call i32 @sorwakeup(%struct.socket* %30)
  ret void
}

declare dso_local i32 @soevent(%struct.socket*, i32) #1

declare dso_local i32 @sflt_notify(%struct.socket*, i32, i32*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @sowwakeup(%struct.socket*) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
