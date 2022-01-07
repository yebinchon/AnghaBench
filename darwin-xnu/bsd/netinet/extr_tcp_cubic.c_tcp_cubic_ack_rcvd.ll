; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_ack_rcvd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_ack_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i64, i32, i32 }
%struct.tcphdr = type { i32 }

@tcp_do_rfc3465_lim2 = common dso_local global i64 0, align 8
@TCP_MAXWIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*)* @tcp_cubic_ack_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cubic_ack_rcvd(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %8 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %9 = call i64 @tcp_cc_is_cwnd_nonvalidated(%struct.tcpcb* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %72

12:                                               ; preds = %2
  %13 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %22 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %23 = call i32 @tcp_cubic_congestion_avd(%struct.tcpcb* %21, %struct.tcphdr* %22)
  br label %72

24:                                               ; preds = %12
  %25 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %26 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %27 = call i32 @BYTES_ACKED(%struct.tcphdr* %25, %struct.tcpcb* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i64, i64* @tcp_do_rfc3465_lim2, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %35 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 2, %41
  br label %47

43:                                               ; preds = %30, %24
  %44 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i32 [ %42, %38 ], [ %46, %43 ]
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @min(i32 %49, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @TCP_MAXWIN, align 4
  %64 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %63, %66
  %68 = call i8* @min(i32 %62, i32 %67)
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %71 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %11, %47, %20
  ret void
}

declare dso_local i64 @tcp_cc_is_cwnd_nonvalidated(%struct.tcpcb*) #1

declare dso_local i32 @tcp_cubic_congestion_avd(%struct.tcpcb*, %struct.tcphdr*) #1

declare dso_local i32 @BYTES_ACKED(%struct.tcphdr*, %struct.tcpcb*) #1

declare dso_local i8* @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
