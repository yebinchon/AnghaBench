; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_inp_fc_unthrottle_tcp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_inp_fc_unthrottle_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.tcpcb* }
%struct.tcpcb = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tcpcb*)* }

@TF_CWND_NONVALIDATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inp_fc_unthrottle_tcp(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.tcpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %5 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %4, i32 0, i32 0
  %6 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  store %struct.tcpcb* %6, %struct.tcpcb** %3, align 8
  %7 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %8 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %9, align 8
  %11 = icmp ne i32 (%struct.tcpcb*)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %14 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %15, align 8
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = call i32 %16(%struct.tcpcb* %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @TF_CWND_NONVALIDATED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %28 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %34 = call i32 @TCP_RESET_REXMT_STATE(%struct.tcpcb* %33)
  %35 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %36 = call i32 @tcp_output(%struct.tcpcb* %35)
  ret void
}

declare dso_local %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb*) #1

declare dso_local i32 @TCP_RESET_REXMT_STATE(%struct.tcpcb*) #1

declare dso_local i32 @tcp_output(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
