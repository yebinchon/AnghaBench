; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_update_window.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_update_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tcpcb = type { i64, i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tcphdr = type { i64, i64 }

@TH_ACK = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, i32, %struct.tcphdr*, i64, i32)* @tcp_update_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_update_window(%struct.tcpcb* %0, i32 %1, %struct.tcphdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcpcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.tcphdr* %2, %struct.tcphdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @TH_ACK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %118

16:                                               ; preds = %5
  %17 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %21 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @SEQ_LT(i64 %19, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %16
  %26 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %30 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %118

33:                                               ; preds = %25
  %34 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %35 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %38 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @SEQ_LT(i64 %36, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %33
  %43 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %47 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %118

50:                                               ; preds = %42
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %53 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %118

56:                                               ; preds = %50, %33, %16
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %64 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tcpstat, i32 0, i32 0), align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tcpstat, i32 0, i32 0), align 4
  br label %76

76:                                               ; preds = %73, %67, %59, %56
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %81 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %86 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %89 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %91 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %76
  %98 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %99 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %102 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %97, %76
  %104 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %105 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %104, i32 0, i32 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %116 = call i32 @mptcp_update_window_wakeup(%struct.tcpcb* %115)
  br label %117

117:                                              ; preds = %114, %103
  store i32 1, i32* %6, align 4
  br label %119

118:                                              ; preds = %50, %42, %25, %5
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %117
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i64 @SEQ_LT(i64, i64) #1

declare dso_local i32 @mptcp_update_window_wakeup(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
