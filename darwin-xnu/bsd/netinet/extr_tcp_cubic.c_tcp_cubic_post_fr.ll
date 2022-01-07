; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_post_fr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_post_fr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.tcphdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*)* @tcp_cubic_post_fr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cubic_post_fr(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %9 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @SEQ_LEQ(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %21 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %26 = call i64 @SACK_ENABLED(%struct.tcpcb* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  %34 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %35 = call i32 @tcp_rxtseg_total_size(%struct.tcpcb* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i8* @max(i32 %38, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %33
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 6
  %58 = call i32 @min(i32 %53, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i8* @max(i32 %61, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %52, %28, %24
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %68 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @max(i32 %72, i32 %75)
  %77 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %78 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %76, i64 %80
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  br label %91

85:                                               ; preds = %65
  %86 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %90 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %71
  %92 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %93 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %92, i32 0, i32 6
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 6
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %101 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %100, i32 0, i32 6
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  ret void
}

declare dso_local i64 @SEQ_LEQ(i32, i32) #1

declare dso_local i64 @SACK_ENABLED(%struct.tcpcb*) #1

declare dso_local i32 @tcp_rxtseg_total_size(%struct.tcpcb*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
