; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cc.c_tcp_cc_after_idle_stretchack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cc.c_tcp_cc_after_idle_stretchack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i32 }

@TF_DISABLE_STRETCHACK = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i32 0, align 4
@TCP_STRETCHACK_DISABLE_WIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_cc_after_idle_stretchack(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @TF_DISABLE_STRETCHACK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %37

11:                                               ; preds = %1
  %12 = load i32, i32* @tcp_now, align 4
  %13 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @timer_diff(i32 %12, i32 0, i32 %15, i32 0)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %11
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @TCP_STRETCHACK_DISABLE_WIN, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32, i32* @TF_DISABLE_STRETCHACK, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %36 = call i32 @tcp_reset_stretch_ack(%struct.tcpcb* %35)
  br label %37

37:                                               ; preds = %10, %26, %22
  ret void
}

declare dso_local i32 @timer_diff(i32, i32, i32, i32) #1

declare dso_local i32 @tcp_reset_stretch_ack(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
