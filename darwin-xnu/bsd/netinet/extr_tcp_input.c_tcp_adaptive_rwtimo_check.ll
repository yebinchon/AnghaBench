; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_adaptive_rwtimo_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_adaptive_rwtimo_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFEF_PROBE_CONNECTIVITY = common dso_local global i32 0, align 4
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@TCPT_KEEP = common dso_local global i64 0, align 8
@TF_DETECT_READSTALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, i32)* @tcp_adaptive_rwtimo_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_adaptive_rwtimo_check(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %5, align 8
  %11 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %17 = icmp ne %struct.ifnet* %16, null
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFEF_PROBE_CONNECTIVITY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %36 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %37 = call i32 @TCP_REXMTVAL(%struct.tcpcb* %36)
  %38 = shl i32 %37, 1
  %39 = call i32 @OFFSET_FROM_START(%struct.tcpcb* %35, i32 %38)
  %40 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @TCPT_KEEP, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* @TF_DETECT_READSTALL, align 4
  %46 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %34, %28, %25, %18, %15
  ret void
}

declare dso_local i32 @OFFSET_FROM_START(%struct.tcpcb*, i32) #1

declare dso_local i32 @TCP_REXMTVAL(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
