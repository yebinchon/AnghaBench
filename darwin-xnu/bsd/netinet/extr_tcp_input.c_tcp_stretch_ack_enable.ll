; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_stretch_ack_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_stretch_ack_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@maxseg_unacked = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i32 0, align 4
@TF_STREAMING_ON = common dso_local global i32 0, align 4
@tcp_maxrcvidle = common dso_local global i64 0, align 8
@TH_ACK = common dso_local global i32 0, align 4
@TF_DISABLE_STRETCHACK = common dso_local global i32 0, align 4
@TCP_STRETCHACK_ENABLE_PKTCNT = common dso_local global i64 0, align 8
@TF_NOSTRETCHACK = common dso_local global i32 0, align 4
@TF_RCVUNACK_WAITSS = common dso_local global i32 0, align 4
@tcp_rcvsspktcnt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, i32)* @tcp_stretch_ack_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_stretch_ack_enable(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @maxseg_unacked, align 4
  %10 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = icmp sge i32 %8, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @tcp_now, align 4
  %20 = call i64 @TSTMP_GEQ(i64 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* @TF_STREAMING_ON, align 4
  %24 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %35

28:                                               ; preds = %15, %2
  %29 = load i32, i32* @TF_STREAMING_ON, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %28, %22
  %36 = load i32, i32* @tcp_now, align 4
  %37 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %38 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @tcp_maxrcvidle, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i64 @TSTMP_GT(i32 %36, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load i32, i32* @TF_STREAMING_ON, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %44, %35
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @TH_ACK, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* @TF_STREAMING_ON, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %57, %51
  %65 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TF_DISABLE_STRETCHACK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %64
  %72 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %73 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TCP_STRETCHACK_ENABLE_PKTCNT, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load i32, i32* @TF_DISABLE_STRETCHACK, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %81 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  br label %93

88:                                               ; preds = %71
  %89 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %90 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %88, %77
  br label %94

94:                                               ; preds = %93, %64
  %95 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %96 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TF_NOSTRETCHACK, align 4
  %99 = load i32, i32* @TF_DISABLE_STRETCHACK, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %124, label %103

103:                                              ; preds = %94
  %104 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %105 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @TF_STREAMING_ON, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %103
  %111 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %112 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TF_RCVUNACK_WAITSS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %119 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @tcp_rcvsspktcnt, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117, %110
  store i32 1, i32* %3, align 4
  br label %125

124:                                              ; preds = %117, %103, %94
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %123
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @TSTMP_GEQ(i64, i32) #1

declare dso_local i64 @TSTMP_GT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
