; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_set_lotimer_index.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_set_lotimer_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@TCPT_NONE = common dso_local global i64 0, align 8
@TCPT_NTIMERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*)* @tcp_set_lotimer_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_set_lotimer_index(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %7 = load i64, i64* @TCPT_NONE, align 8
  store i64 %7, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %45, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @TCPT_NTIMERS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @TCP_SET_TIMER_MODE(i64 %21, i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %28 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %26, %20
  %36 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %3, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %35, %26
  br label %44

44:                                               ; preds = %43, %12
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %8

48:                                               ; preds = %8
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  %57 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TCPT_NONE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %48
  %64 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %67, 0
  br label %69

69:                                               ; preds = %63, %48
  %70 = phi i1 [ true, %48 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @VERIFY(i32 %71)
  %73 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TCPT_NONE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %69
  %80 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %81 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %88 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %86, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %83, %92
  %94 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %95 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i64 %93, i64* %96, align 8
  %97 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %98 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %79
  %103 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %104 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %102, %79
  br label %109

109:                                              ; preds = %108, %69
  ret void
}

declare dso_local i32 @TCP_SET_TIMER_MODE(i64, i64) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
