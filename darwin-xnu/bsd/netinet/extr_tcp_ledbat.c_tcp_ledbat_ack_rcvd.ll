; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_ledbat.c_tcp_ledbat_ack_rcvd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_ledbat.c_tcp_ledbat_ack_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i64, i64, i64 }
%struct.tcphdr = type { i32 }

@tcp_do_rfc3465_lim2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_ledbat_ack_rcvd(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %9 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = call i32 @BYTES_ACKED(%struct.tcphdr* %15, %struct.tcpcb* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %31 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %35, %29
  br label %58

37:                                               ; preds = %2
  %38 = load i64, i64* @tcp_do_rfc3465_lim2, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %6, align 8
  %50 = mul nsw i64 %49, 2
  br label %53

51:                                               ; preds = %40, %37
  %52 = load i64, i64* %6, align 8
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i64 [ %50, %48 ], [ %52, %51 ]
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @lmin(i32 %55, i64 %56)
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %53, %36
  %59 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %67 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load i64, i64* %6, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @update_cwnd(%struct.tcpcb* %74, i64 %75)
  br label %77

77:                                               ; preds = %73, %70
  ret void
}

declare dso_local i32 @BYTES_ACKED(%struct.tcphdr*, %struct.tcpcb*) #1

declare dso_local i64 @lmin(i32, i64) #1

declare dso_local i32 @update_cwnd(%struct.tcpcb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
