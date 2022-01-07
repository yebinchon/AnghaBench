; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_bad_rexmt_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_bad_rexmt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tcpcb = type { i64, i32, i64, i32, i64, i64, i64 }
%struct.tcphdr = type { i32 }
%struct.tcpopt = type { i32, i64 }

@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TCP_CC_BAD_REXMT_RECOVERY = common dso_local global i32 0, align 4
@TF_SENT_TLPROBE = common dso_local global i32 0, align 4
@TCP_CC_TLP_RECOVER_LASTPACKET = common dso_local global i32 0, align 4
@TCP_CC_DSACK_BAD_REXMT = common dso_local global i32 0, align 4
@TF_BLACKHOLE = common dso_local global i32 0, align 4
@TOF_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*, %struct.tcpopt*)* @tcp_bad_rexmt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_bad_rexmt_check(%struct.tcpcb* %0, %struct.tcphdr* %1, %struct.tcpopt* %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca %struct.tcpopt*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %5, align 8
  store %struct.tcpopt* %2, %struct.tcpopt** %6, align 8
  %7 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %13 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %14 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %15 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %16 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @tcp_detect_bad_rexmt(%struct.tcpcb* %12, %struct.tcphdr* %13, %struct.tcpopt* %14, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %23 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %24 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %25 = call i32 @tcp_bad_rexmt_restore_state(%struct.tcpcb* %23, %struct.tcphdr* %24)
  %26 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %27 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %28 = load i32, i32* @TCP_CC_BAD_REXMT_RECOVERY, align 4
  %29 = call i32 @tcp_ccdbg_trace(%struct.tcpcb* %26, %struct.tcphdr* %27, i32 %28)
  br label %104

30:                                               ; preds = %11, %3
  %31 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TF_SENT_TLPROBE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %83

37:                                               ; preds = %30
  %38 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %37
  %43 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %44 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @SEQ_GEQ(i32 %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %42
  %52 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %53 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %54 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %55 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @tcp_detect_bad_rexmt(%struct.tcpcb* %52, %struct.tcphdr* %53, %struct.tcpopt* %54, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %51
  %61 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %62 = call i64 @tcp_rxtseg_dsack_for_tlp(%struct.tcpcb* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %66 = call i32 @tcp_rxtseg_clean(%struct.tcpcb* %65)
  br label %105

67:                                               ; preds = %60
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %70 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %71 = call i32 @IN_FASTRECOVERY(%struct.tcpcb* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %75 = call i32 @tcp_reduce_congestion_window(%struct.tcpcb* %74)
  %76 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %77 = call i32 @EXIT_FASTRECOVERY(%struct.tcpcb* %76)
  br label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %80 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %81 = load i32, i32* @TCP_CC_TLP_RECOVER_LASTPACKET, align 4
  %82 = call i32 @tcp_ccdbg_trace(%struct.tcpcb* %79, %struct.tcphdr* %80, i32 %81)
  br label %103

83:                                               ; preds = %51, %42, %37, %30
  %84 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %85 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %86 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @tcp_rxtseg_detect_bad_rexmt(%struct.tcpcb* %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %93 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %94 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %95 = call i32 @tcp_bad_rexmt_restore_state(%struct.tcpcb* %93, %struct.tcphdr* %94)
  %96 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %97 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %98 = load i32, i32* @TCP_CC_DSACK_BAD_REXMT, align 4
  %99 = call i32 @tcp_ccdbg_trace(%struct.tcpcb* %96, %struct.tcphdr* %97, i32 %98)
  %100 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %101 = call i32 @tcp_rxtseg_clean(%struct.tcpcb* %100)
  br label %102

102:                                              ; preds = %90, %83
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %20
  br label %105

105:                                              ; preds = %104, %64
  %106 = load i32, i32* @TF_SENT_TLPROBE, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %109 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %113 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %115 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %114, i32 0, i32 5
  store i64 0, i64* %115, align 8
  %116 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %117 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %161

120:                                              ; preds = %105
  %121 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %122 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @TF_BLACKHOLE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %120
  %128 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %129 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %161

132:                                              ; preds = %127
  %133 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %134 = call i64 @TSTMP_SUPPORTED(%struct.tcpcb* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %161

136:                                              ; preds = %132
  %137 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %138 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @TOF_TS, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %136
  %144 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %145 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %143
  %149 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %150 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %153 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @TSTMP_LT(i64 %151, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %148
  %158 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %159 = call i32 @tcp_pmtud_revert_segment_size(%struct.tcpcb* %158)
  br label %160

160:                                              ; preds = %157, %148, %143, %136
  br label %161

161:                                              ; preds = %160, %132, %127, %120, %105
  %162 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %163 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %168 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %167, i32 0, i32 4
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %166, %161
  ret void
}

declare dso_local i64 @tcp_detect_bad_rexmt(%struct.tcpcb*, %struct.tcphdr*, %struct.tcpopt*, i64) #1

declare dso_local i32 @tcp_bad_rexmt_restore_state(%struct.tcpcb*, %struct.tcphdr*) #1

declare dso_local i32 @tcp_ccdbg_trace(%struct.tcpcb*, %struct.tcphdr*, i32) #1

declare dso_local i64 @SEQ_GEQ(i32, i64) #1

declare dso_local i64 @tcp_rxtseg_dsack_for_tlp(%struct.tcpcb*) #1

declare dso_local i32 @tcp_rxtseg_clean(%struct.tcpcb*) #1

declare dso_local i32 @IN_FASTRECOVERY(%struct.tcpcb*) #1

declare dso_local i32 @tcp_reduce_congestion_window(%struct.tcpcb*) #1

declare dso_local i32 @EXIT_FASTRECOVERY(%struct.tcpcb*) #1

declare dso_local i64 @tcp_rxtseg_detect_bad_rexmt(%struct.tcpcb*, i32) #1

declare dso_local i64 @TSTMP_SUPPORTED(%struct.tcpcb*) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

declare dso_local i32 @tcp_pmtud_revert_segment_size(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
