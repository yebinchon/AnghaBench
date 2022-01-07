; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_free_sackholes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_free_sackholes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.sackhole = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_free_sackholes(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.sackhole*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 2
  %7 = call %struct.sackhole* @TAILQ_FIRST(i32* %6)
  store %struct.sackhole* %7, %struct.sackhole** %3, align 8
  %8 = icmp ne %struct.sackhole* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %11 = load %struct.sackhole*, %struct.sackhole** %3, align 8
  %12 = call i32 @tcp_sackhole_remove(%struct.tcpcb* %10, %struct.sackhole* %11)
  br label %4

13:                                               ; preds = %4
  %14 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  ret void
}

declare dso_local %struct.sackhole* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @tcp_sackhole_remove(%struct.tcpcb*, %struct.sackhole*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
