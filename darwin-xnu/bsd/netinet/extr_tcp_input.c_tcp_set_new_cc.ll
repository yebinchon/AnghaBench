; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_set_new_cc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_set_new_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i64 }
%struct.TYPE_2__ = type { i32 (%struct.tcpcb*, i64)*, i32 (%struct.tcpcb*)* }

@TCP_CC_CHANGE_ALGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, i64)* @tcp_set_new_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_set_new_cc(%struct.socket* %0, i64 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = call %struct.inpcb* @sotoinpcb(%struct.socket* %8)
  store %struct.inpcb* %9, %struct.inpcb** %5, align 8
  %10 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %11 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %10)
  store %struct.tcpcb* %11, %struct.tcpcb** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %2
  %18 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %22 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %23, align 8
  %25 = icmp ne i32 (%struct.tcpcb*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %28 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %29, align 8
  %31 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %32 = call i32 %30(%struct.tcpcb* %31)
  br label %33

33:                                               ; preds = %26, %17
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %38 = call i32 @tcp_cc_allocate_state(%struct.tcpcb* %37)
  %39 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %40 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.tcpcb*, i64)*, i32 (%struct.tcpcb*, i64)** %41, align 8
  %43 = icmp ne i32 (%struct.tcpcb*, i64)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %46 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.tcpcb*, i64)*, i32 (%struct.tcpcb*, i64)** %47, align 8
  %49 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 %48(%struct.tcpcb* %49, i64 %50)
  br label %52

52:                                               ; preds = %44, %33
  %53 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %54 = load i32, i32* @TCP_CC_CHANGE_ALGO, align 4
  %55 = call i32 @tcp_ccdbg_trace(%struct.tcpcb* %53, i32* null, i32 %54)
  br label %56

56:                                               ; preds = %52, %2
  ret void
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb*) #1

declare dso_local i32 @tcp_cc_allocate_state(%struct.tcpcb*) #1

declare dso_local i32 @tcp_ccdbg_trace(%struct.tcpcb*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
