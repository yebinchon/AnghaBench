; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_cwnd_init_or_reset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_cwnd_init_or_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@TCP_CC_CWND_INIT_BYTES = common dso_local global i64 0, align 8
@TCP_MAXWIN = common dso_local global i32 0, align 4
@TCP_MAX_WINSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*)* @tcp_cubic_cwnd_init_or_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cubic_cwnd_init_or_reset(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %3 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %4 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %3, i32 0, i32 1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @VERIFY(i32 %7)
  %9 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %10 = call i32 @tcp_cubic_clear_state(%struct.tcpcb* %9)
  %11 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %12 = call i32 @tcp_cc_cwnd_init_or_reset(%struct.tcpcb* %11)
  %13 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %16 = call i32 @tcp_clear_pipeack_state(%struct.tcpcb* %15)
  %17 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCP_CC_CWND_INIT_BYTES, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %1
  %29 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TCP_MAXWIN, align 4
  %33 = load i32, i32* @TCP_MAX_WINSHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32, i32* @TCP_MAXWIN, align 4
  %38 = load i32, i32* @TCP_MAX_WINSHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %36, %28, %1
  %43 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @tcp_cubic_clear_state(%struct.tcpcb*) #1

declare dso_local i32 @tcp_cc_cwnd_init_or_reset(%struct.tcpcb*) #1

declare dso_local i32 @tcp_clear_pipeack_state(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
