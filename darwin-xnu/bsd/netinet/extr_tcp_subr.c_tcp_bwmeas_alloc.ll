; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_bwmeas_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_bwmeas_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwmeas = type { i32, i32 }
%struct.tcpcb = type { i32 }

@tcp_bwmeas_zone = common dso_local global i32 0, align 4
@bwmeas_elm_size = common dso_local global i32 0, align 4
@TCP_BWMEAS_BURST_MINSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwmeas* @tcp_bwmeas_alloc(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.bwmeas*, align 8
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.bwmeas*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  %5 = load i32, i32* @tcp_bwmeas_zone, align 4
  %6 = call %struct.bwmeas* @zalloc(i32 %5)
  store %struct.bwmeas* %6, %struct.bwmeas** %4, align 8
  %7 = load %struct.bwmeas*, %struct.bwmeas** %4, align 8
  %8 = icmp eq %struct.bwmeas* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.bwmeas*, %struct.bwmeas** %4, align 8
  store %struct.bwmeas* %10, %struct.bwmeas** %2, align 8
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.bwmeas*, %struct.bwmeas** %4, align 8
  %13 = load i32, i32* @bwmeas_elm_size, align 4
  %14 = call i32 @bzero(%struct.bwmeas* %12, i32 %13)
  %15 = load i32, i32* @TCP_BWMEAS_BURST_MINSIZE, align 4
  %16 = load %struct.bwmeas*, %struct.bwmeas** %4, align 8
  %17 = getelementptr inbounds %struct.bwmeas, %struct.bwmeas* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bwmeas*, %struct.bwmeas** %4, align 8
  %19 = getelementptr inbounds %struct.bwmeas, %struct.bwmeas* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = load %struct.bwmeas*, %struct.bwmeas** %4, align 8
  %26 = getelementptr inbounds %struct.bwmeas, %struct.bwmeas* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bwmeas*, %struct.bwmeas** %4, align 8
  store %struct.bwmeas* %27, %struct.bwmeas** %2, align 8
  br label %28

28:                                               ; preds = %11, %9
  %29 = load %struct.bwmeas*, %struct.bwmeas** %2, align 8
  ret %struct.bwmeas* %29
}

declare dso_local %struct.bwmeas* @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.bwmeas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
