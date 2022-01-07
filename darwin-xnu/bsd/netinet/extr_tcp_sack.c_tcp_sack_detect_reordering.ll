; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sack_detect_reordering.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sack_detect_reordering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.tcpcb = type { i64, i32, i32, i8*, i32, i32 }
%struct.sackhole = type { i64, i32, i32 }

@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@tcp_detect_reordering = common dso_local global i32 0, align 4
@TF_PKTS_REORDERED = common dso_local global i32 0, align 4
@ecn_fallback_reorder = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i32 0, align 4
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.sackhole*, i32, i32)* @tcp_sack_detect_reordering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sack_detect_reordering(%struct.tcpcb* %0, %struct.sackhole* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.sackhole*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.sackhole* %1, %struct.sackhole** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.sackhole*, %struct.sackhole** %6, align 8
  %12 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @SEQ_GT(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %122

18:                                               ; preds = %4
  %19 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %122

24:                                               ; preds = %18
  %25 = load %struct.sackhole*, %struct.sackhole** %6, align 8
  %26 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @SEQ_LT(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %122

37:                                               ; preds = %34
  %38 = load i32, i32* @tcp_detect_reordering, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TF_PKTS_REORDERED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @TF_PKTS_REORDERED, align 4
  %49 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %50 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  br label %55

55:                                               ; preds = %47, %40, %37
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %58 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %63 = call i64 @TCP_ECN_ENABLED(%struct.tcpcb* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %67 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ecn_fallback_reorder, align 4
  %70 = call i32 @INP_INC_IFNET_STAT(i32 %68, i32 %69)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %73 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %74 = call i32 @tcp_heuristic_ecn_aggressive(%struct.tcpcb* %73)
  br label %75

75:                                               ; preds = %65, %55
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.sackhole*, %struct.sackhole** %6, align 8
  %78 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @SEQ_GEQ(i32 %76, i32 %79)
  %81 = call i32 @VERIFY(i32 %80)
  %82 = load %struct.sackhole*, %struct.sackhole** %6, align 8
  %83 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %75
  %87 = load i32, i32* @tcp_now, align 4
  %88 = load %struct.sackhole*, %struct.sackhole** %6, align 8
  %89 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @timer_diff(i32 %87, i32 0, i64 %90, i32 0)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %122

95:                                               ; preds = %86
  %96 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i8* @max(i8* %98, i32 %99)
  %101 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %102 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %104 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %110 = sub nsw i32 %109, 1
  %111 = ashr i32 %108, %110
  %112 = call i8* @min(i8* %105, i32 %111)
  %113 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %114 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %116 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @max(i8* %117, i32 10)
  %119 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %120 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %95, %75
  br label %122

122:                                              ; preds = %17, %23, %94, %121, %34
  ret void
}

declare dso_local i64 @SEQ_GT(i32, i32) #1

declare dso_local i64 @SEQ_LT(i32, i32) #1

declare dso_local i64 @TCP_ECN_ENABLED(%struct.tcpcb*) #1

declare dso_local i32 @INP_INC_IFNET_STAT(i32, i32) #1

declare dso_local i32 @tcp_heuristic_ecn_aggressive(%struct.tcpcb*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @SEQ_GEQ(i32, i32) #1

declare dso_local i32 @timer_diff(i32, i32, i64, i32) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i8* @min(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
