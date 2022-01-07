; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_disconnect_socket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_disconnect_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @flow_divert_disconnect_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_divert_disconnect_socket(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = call i32 @soisdisconnected(%struct.socket* %4)
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = call i64 @SOCK_TYPE(%struct.socket* %6)
  %8 = load i64, i64* @SOCK_DGRAM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  store %struct.inpcb* null, %struct.inpcb** %3, align 8
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = call %struct.inpcb* @sotoinpcb(%struct.socket* %11)
  store %struct.inpcb* %12, %struct.inpcb** %3, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %14 = icmp ne %struct.inpcb* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %17 = call i32 @in_pcbdetach(%struct.inpcb* %16)
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

declare dso_local i64 @SOCK_TYPE(%struct.socket*) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @in_pcbdetach(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
