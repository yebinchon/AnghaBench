; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_notify_ack_active.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_notify_ack_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.tcpcb = type { i32, i32 }
%struct.tcp_notify_ack_marker = type { i32 }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_notify_ack_active(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tcp_notify_ack_marker*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = call i64 @SOCK_DOM(%struct.socket* %6)
  %8 = load i64, i64* @PF_INET, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = call i64 @SOCK_DOM(%struct.socket* %11)
  %13 = load i64, i64* @PF_INET6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %10, %1
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = call i64 @SOCK_TYPE(%struct.socket* %16)
  %18 = load i64, i64* @SOCK_STREAM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = call i32 @sotoinpcb(%struct.socket* %21)
  %23 = call %struct.tcpcb* @intotcpcb(i32 %22)
  store %struct.tcpcb* %23, %struct.tcpcb** %4, align 8
  %24 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 1
  %26 = call i32 @SLIST_EMPTY(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %20
  %29 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 1
  %31 = call %struct.tcp_notify_ack_marker* @SLIST_FIRST(i32* %30)
  store %struct.tcp_notify_ack_marker* %31, %struct.tcp_notify_ack_marker** %5, align 8
  %32 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tcp_notify_ack_marker*, %struct.tcp_notify_ack_marker** %5, align 8
  %36 = getelementptr inbounds %struct.tcp_notify_ack_marker, %struct.tcp_notify_ack_marker* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @SEQ_GEQ(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %44

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %20
  br label %43

43:                                               ; preds = %42, %15, %10
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @SOCK_DOM(%struct.socket*) #1

declare dso_local i64 @SOCK_TYPE(%struct.socket*) #1

declare dso_local %struct.tcpcb* @intotcpcb(i32) #1

declare dso_local i32 @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.tcp_notify_ack_marker* @SLIST_FIRST(i32*) #1

declare dso_local i64 @SEQ_GEQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
