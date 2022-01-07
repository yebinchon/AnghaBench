; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_ledbat.c_tcp_ledbat_congestion_avd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_ledbat.c_tcp_ledbat_congestion_avd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i64 }
%struct.tcphdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_ledbat_congestion_avd(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %8 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %9 = call i32 @BYTES_ACKED(%struct.tcphdr* %7, %struct.tcpcb* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %28 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %23, %2
  %35 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i64, i64* %6, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @update_cwnd(%struct.tcpcb* %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %42, %34
  ret void
}

declare dso_local i32 @BYTES_ACKED(%struct.tcphdr*, %struct.tcpcb*) #1

declare dso_local i32 @update_cwnd(%struct.tcpcb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
