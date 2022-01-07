; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sack_partialack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sack_partialack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_2__, i64, i64* }
%struct.TYPE_2__ = type { i64 }
%struct.tcphdr = type { i64 }
%struct.sackhole = type { i32 }

@TCPT_REXMT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_sack_partialack(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sackhole*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 10
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @TCPT_REXMT, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  store i64 0, i64* %11, align 8
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 9
  store i64 0, i64* %13, align 8
  %14 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %15 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %16 = call i32 @BYTES_ACKED(%struct.tcphdr* %14, %struct.tcpcb* %15)
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %16, %19
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 2, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = add nsw i64 %27, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %38 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %35, %41
  %43 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %46 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %23
  %53 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %57 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %23
  %59 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %63 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @SEQ_LT(i64 %61, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %58
  %68 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %72 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %67
  %76 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %77 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %76, i32 0, i32 7
  %78 = call i64 @TAILQ_EMPTY(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %82 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %83 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %86 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = call %struct.sackhole* @tcp_sackhole_insert(%struct.tcpcb* %81, i64 %84, i64 %87, i32* null)
  store %struct.sackhole* %88, %struct.sackhole** %6, align 8
  %89 = load %struct.sackhole*, %struct.sackhole** %6, align 8
  %90 = icmp ne %struct.sackhole* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %80
  %92 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %93 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %96 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %95, i32 0, i32 5
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %80
  br label %98

98:                                               ; preds = %97, %75, %67, %58
  %99 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %100 = call i32 @tcp_output(%struct.tcpcb* %99)
  ret void
}

declare dso_local i32 @BYTES_ACKED(%struct.tcphdr*, %struct.tcpcb*) #1

declare dso_local i64 @SEQ_LT(i64, i64) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.sackhole* @tcp_sackhole_insert(%struct.tcpcb*, i64, i64, i32*) #1

declare dso_local i32 @tcp_output(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
