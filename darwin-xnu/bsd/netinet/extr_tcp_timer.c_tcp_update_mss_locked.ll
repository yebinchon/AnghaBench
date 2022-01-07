; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_update_mss_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_update_mss_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.ifnet = type { i32* }
%struct.inpcb = type { %struct.ifnet* }
%struct.tcpcb = type { i64, i32 }

@TCPS_CLOSE_WAIT = common dso_local global i64 0, align 8
@TF_BLACKHOLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_update_mss_locked(%struct.socket* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.tcpcb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = call %struct.inpcb* @sotoinpcb(%struct.socket* %7)
  store %struct.inpcb* %8, %struct.inpcb** %5, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %10 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %9)
  store %struct.tcpcb* %10, %struct.tcpcb** %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = icmp eq %struct.ifnet* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %15 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %14, i32 0, i32 0
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %4, align 8
  %17 = icmp eq %struct.ifnet* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %48

19:                                               ; preds = %13, %2
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = call i32 @IFNET_IS_CELLULAR(%struct.ifnet* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %48

24:                                               ; preds = %19
  %25 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TCPS_CLOSE_WAIT, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TF_BLACKHOLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %48

38:                                               ; preds = %30
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %48

44:                                               ; preds = %38
  %45 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = call i32 @tcp_update_mss_core(%struct.tcpcb* %45, %struct.ifnet* %46)
  br label %48

48:                                               ; preds = %18, %23, %37, %43, %44, %24
  ret void
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @IFNET_IS_CELLULAR(%struct.ifnet*) #1

declare dso_local i32 @tcp_update_mss_core(%struct.tcpcb*, %struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
