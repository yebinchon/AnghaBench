; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_ledbat.c_update_cwnd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_ledbat.c_update_cwnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, i32, i32, i64, i64 }

@target_qdelay = common dso_local global i64 0, align 8
@bg_ss_fltsz = common dso_local global i32 0, align 4
@allowed_increase = common dso_local global i64 0, align 8
@tether_shift = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, i64)* @update_cwnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cwnd(%struct.tcpcb* %0, i64 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %10 = call i64 @get_base_rtt(%struct.tcpcb* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13, %2
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  br label %102

26:                                               ; preds = %13
  %27 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %28 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @target_qdelay, align 8
  %32 = add nsw i64 %30, %31
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %26
  %35 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %34
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  br label %101

56:                                               ; preds = %26
  %57 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %59, 3
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  %69 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @bg_ss_fltsz, align 4
  %73 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %56
  %79 = load i32, i32* @bg_ss_fltsz, align 4
  %80 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %81 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %79, %82
  %84 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %78, %56
  %87 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %88 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %91 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %96 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %99 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %86
  br label %101

101:                                              ; preds = %100, %48
  br label %102

102:                                              ; preds = %101, %18
  %103 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %104 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* @allowed_increase, align 8
  %111 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %112 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = mul nsw i64 %110, %114
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @tether_shift, align 8
  %118 = shl i64 %116, %117
  %119 = add nsw i64 %115, %118
  store i64 %119, i64* %5, align 8
  %120 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %121 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @min(i32 %122, i64 %123)
  %125 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %126 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  ret void
}

declare dso_local i64 @get_base_rtt(%struct.tcpcb*) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
