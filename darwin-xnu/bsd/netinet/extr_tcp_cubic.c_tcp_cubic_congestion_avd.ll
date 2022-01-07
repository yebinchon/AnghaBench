; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_congestion_avd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_congestion_avd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i32, i64 }
%struct.tcphdr = type { i32 }

@tcp_cubic_tcp_friendliness = common dso_local global i32 0, align 4
@TCP_MAXWIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*)* @tcp_cubic_congestion_avd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cubic_congestion_avd(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %9 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %10 = call i64 @tcp_cc_is_cwnd_nonvalidated(%struct.tcpcb* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %121

13:                                               ; preds = %2
  %14 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %15 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %16 = call i64 @BYTES_ACKED(%struct.tcphdr* %14, %struct.tcpcb* %15)
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %22 = call i64 @get_base_rtt(%struct.tcpcb* %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @tcp_cubic_update(%struct.tcpcb* %23, i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %27 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %28 = call i64 @tcp_cubic_tcpwin(%struct.tcpcb* %26, %struct.tcphdr* %27)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %13
  %35 = load i32, i32* @tcp_cubic_tcp_friendliness, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %39 = call i64 @TCP_CUBIC_ENABLE_TCPMODE(%struct.tcpcb* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %37, %34
  %42 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %46 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %41
  %50 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @TCP_MAXWIN, align 4
  %59 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %58, %61
  %63 = call i8* @min(i64 %57, i32 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %49, %41
  br label %121

68:                                               ; preds = %37, %13
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %71 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %120

74:                                               ; preds = %68
  %75 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %76 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = mul nsw i64 %77, %80
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = load i64, i64* %8, align 8
  %88 = sdiv i64 %87, %86
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %74
  %92 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %93 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %91
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %100 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %104 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = load i32, i32* @TCP_MAXWIN, align 4
  %111 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %112 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 %110, %113
  %115 = call i8* @min(i64 %109, i32 %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %118 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %97, %91, %74
  br label %120

120:                                              ; preds = %119, %68
  br label %121

121:                                              ; preds = %12, %120, %67
  ret void
}

declare dso_local i64 @tcp_cc_is_cwnd_nonvalidated(%struct.tcpcb*) #1

declare dso_local i64 @BYTES_ACKED(%struct.tcphdr*, %struct.tcpcb*) #1

declare dso_local i64 @get_base_rtt(%struct.tcpcb*) #1

declare dso_local i64 @tcp_cubic_update(%struct.tcpcb*, i64) #1

declare dso_local i64 @tcp_cubic_tcpwin(%struct.tcpcb*, %struct.tcphdr*) #1

declare dso_local i64 @TCP_CUBIC_ENABLE_TCPMODE(%struct.tcpcb*) #1

declare dso_local i8* @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
