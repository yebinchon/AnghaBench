; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_ledbat.c_tcp_ledbat_switch_cc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_ledbat.c_tcp_ledbat_switch_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tcpcb = type { i64, i64, i64, i32, i64, i32 }

@bg_ss_fltsz = common dso_local global i32 0, align 4
@tcp_cc_ledbat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_ledbat_switch_cc(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %10, %2
  %19 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %18, %10
  %25 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @min(i32 %27, i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %40, %43
  store i32 %44, i32* %5, align 4
  br label %52

45:                                               ; preds = %24
  %46 = load i32, i32* %5, align 4
  %47 = sdiv i32 %46, 2
  %48 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %47, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %45, %39
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @bg_ss_fltsz, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @bg_ss_fltsz, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %68 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_cc_ledbat, i32 0, i32 0))
  ret void
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
