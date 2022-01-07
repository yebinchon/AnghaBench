; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_usr_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_usr_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i64 }
%struct.tcpcb = type { i32 }

@TCPDEBUG0 = common dso_local global i32 0, align 4
@INPCB_STATE_DEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PRU_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @tcp_usr_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_usr_detach(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.tcpcb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = call %struct.inpcb* @sotoinpcb(%struct.socket* %7)
  store %struct.inpcb* %8, %struct.inpcb** %5, align 8
  %9 = load i32, i32* @TCPDEBUG0, align 4
  %10 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %11 = icmp eq %struct.inpcb* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INPCB_STATE_DEAD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %12
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = call i32 @socket_lock_assert_owned(%struct.socket* %21)
  %23 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %24 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %23)
  store %struct.tcpcb* %24, %struct.tcpcb** %6, align 8
  %25 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %26 = icmp eq %struct.tcpcb* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %33

28:                                               ; preds = %20
  %29 = call i32 (...) @TCPDEBUG1()
  %30 = call i32 (...) @calculate_tcp_clock()
  %31 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %32 = call %struct.tcpcb* @tcp_disconnect(%struct.tcpcb* %31)
  store %struct.tcpcb* %32, %struct.tcpcb** %6, align 8
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32, i32* @PRU_DETACH, align 4
  %35 = call i32 @TCPDEBUG2(i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @TCPDEBUG1(...) #1

declare dso_local i32 @calculate_tcp_clock(...) #1

declare dso_local %struct.tcpcb* @tcp_disconnect(%struct.tcpcb*) #1

declare dso_local i32 @TCPDEBUG2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
