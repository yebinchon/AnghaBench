; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_pmtud_revert_segment_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_pmtud_revert_segment_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.tcpcb = type { i64, i64, i64, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.tcpcb*)* }

@TF_PMTUD = common dso_local global i32 0, align 4
@TF_BLACKHOLE = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_pmtud_revert_segment_size(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @VERIFY(i32 %8)
  %10 = load i32, i32* @TF_PMTUD, align 4
  %11 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* @TF_BLACKHOLE, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* %3, align 8
  %28 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %41 = call %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %42, align 8
  %44 = icmp ne i32 (%struct.tcpcb*)* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %47 = call %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %48, align 8
  %50 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %51 = call i32 %49(%struct.tcpcb* %50)
  br label %52

52:                                               ; preds = %45, %1
  %53 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcpstat, i32 0, i32 0), align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcpstat, i32 0, i32 0), align 4
  %57 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tcp_update_mss_locked(i32 %61, i32* null)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb*) #1

declare dso_local i32 @tcp_update_mss_locked(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
