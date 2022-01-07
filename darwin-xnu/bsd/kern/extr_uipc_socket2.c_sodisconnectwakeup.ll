; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sodisconnectwakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sodisconnectwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32 }

@SS_ISCONNECTING = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SS_ISDISCONNECTING = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@SS_CANTSENDMORE = common dso_local global i32 0, align 4
@SS_ISDISCONNECTED = common dso_local global i32 0, align 4
@SO_FILT_HINT_LOCKED = common dso_local global i32 0, align 4
@SO_FILT_HINT_DISCONNECTED = common dso_local global i32 0, align 4
@SO_FILT_HINT_CONNINFO_UPDATED = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sodisconnectwakeup(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load i32, i32* @SS_ISCONNECTING, align 4
  %4 = load i32, i32* @SS_ISCONNECTED, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @SS_ISDISCONNECTING, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load %struct.socket*, %struct.socket** %2, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @SS_CANTRCVMORE, align 4
  %14 = load i32, i32* @SS_CANTSENDMORE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SS_ISDISCONNECTED, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.socket*, %struct.socket** %2, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.socket*, %struct.socket** %2, align 8
  %23 = load i32, i32* @SO_FILT_HINT_LOCKED, align 4
  %24 = load i32, i32* @SO_FILT_HINT_DISCONNECTED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SO_FILT_HINT_CONNINFO_UPDATED, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @soevent(%struct.socket* %22, i32 %27)
  %29 = load %struct.socket*, %struct.socket** %2, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = ptrtoint i32* %30 to i32
  %32 = call i32 @wakeup(i32 %31)
  %33 = load %struct.socket*, %struct.socket** %2, align 8
  %34 = call i32 @sowwakeup(%struct.socket* %33)
  %35 = load %struct.socket*, %struct.socket** %2, align 8
  %36 = call i32 @sorwakeup(%struct.socket* %35)
  ret void
}

declare dso_local i32 @soevent(%struct.socket*, i32) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @sowwakeup(%struct.socket*) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
