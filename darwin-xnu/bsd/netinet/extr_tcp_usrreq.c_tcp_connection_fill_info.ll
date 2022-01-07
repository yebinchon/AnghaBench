; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_connection_fill_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_connection_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i32, i64*, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.inpcb* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.inpcb = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.tcp_connection_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TCPS_LISTEN = common dso_local global i64 0, align 8
@TCPCI_OPT_TIMESTAMPS = common dso_local global i32 0, align 4
@TCPCI_OPT_SACK = common dso_local global i32 0, align 4
@TCPCI_OPT_WSCALE = common dso_local global i32 0, align 4
@TCPCI_OPT_ECN = common dso_local global i32 0, align 4
@TCPCI_FLAG_LOSSRECOVERY = common dso_local global i32 0, align 4
@TF_PKTS_REORDERED = common dso_local global i32 0, align 4
@TCPCI_FLAG_REORDERING_DETECTED = common dso_local global i32 0, align 4
@TCPT_REXMT = common dso_local global i64 0, align 8
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TCP_RTTVAR_SHIFT = common dso_local global i32 0, align 4
@TFO_S_SYNDATA_RCV = common dso_local global i32 0, align 4
@TFO_S_COOKIEREQ_RECV = common dso_local global i32 0, align 4
@TFO_S_COOKIE_SENT = common dso_local global i32 0, align 4
@TFO_S_COOKIE_INVALID = common dso_local global i32 0, align 4
@TFO_S_COOKIE_REQ = common dso_local global i32 0, align 4
@TFO_S_COOKIE_RCV = common dso_local global i32 0, align 4
@TFO_S_SYN_DATA_SENT = common dso_local global i32 0, align 4
@TFO_S_SYN_DATA_ACKED = common dso_local global i32 0, align 4
@TFO_S_SYN_LOSS = common dso_local global i32 0, align 4
@TFO_S_COOKIE_WRONG = common dso_local global i32 0, align 4
@TFO_S_NO_COOKIE_RCV = common dso_local global i32 0, align 4
@TFO_S_HEURISTICS_DISABLE = common dso_local global i32 0, align 4
@TFO_S_SEND_BLACKHOLE = common dso_local global i32 0, align 4
@TFO_S_RECV_BLACKHOLE = common dso_local global i32 0, align 4
@TFO_S_ONE_BYTE_PROXY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_connection_info*)* @tcp_connection_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_connection_fill_info(%struct.tcpcb* %0, %struct.tcp_connection_info* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcp_connection_info*, align 8
  %5 = alloca %struct.inpcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcp_connection_info* %1, %struct.tcp_connection_info** %4, align 8
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 17
  %8 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  store %struct.inpcb* %8, %struct.inpcb** %5, align 8
  %9 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %10 = call i32 @bzero(%struct.tcp_connection_info* %9, i32 152)
  %11 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %15 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCPS_LISTEN, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %379

21:                                               ; preds = %2
  %22 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %23 = call i64 @TSTMP_SUPPORTED(%struct.tcpcb* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @TCPCI_OPT_TIMESTAMPS, align 4
  %27 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %28 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %27, i32 0, i32 34
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %33 = call i64 @SACK_ENABLED(%struct.tcpcb* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @TCPCI_OPT_SACK, align 4
  %37 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %38 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %37, i32 0, i32 34
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %31
  %42 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %43 = call i64 @TCP_WINDOW_SCALE_ENABLED(%struct.tcpcb* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i32, i32* @TCPCI_OPT_WSCALE, align 4
  %47 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %48 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %47, i32 0, i32 34
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 16
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %55 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %54, i32 0, i32 36
  store i32 %53, i32* %55, align 4
  %56 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %57 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %56, i32 0, i32 15
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %60 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %59, i32 0, i32 35
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %45, %41
  %62 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %63 = call i64 @TCP_ECN_ENABLED(%struct.tcpcb* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @TCPCI_OPT_ECN, align 4
  %67 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %68 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %67, i32 0, i32 34
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %61
  %72 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %73 = call i64 @IN_FASTRECOVERY(%struct.tcpcb* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %77 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75, %71
  %81 = load i32, i32* @TCPCI_FLAG_LOSSRECOVERY, align 4
  %82 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %83 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %82, i32 0, i32 33
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %75
  %87 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %88 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TF_PKTS_REORDERED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @TCPCI_FLAG_REORDERING_DETECTED, align 4
  %95 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %96 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %95, i32 0, i32 33
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %101 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %100, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @TCPT_REXMT, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %109 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %108, i32 0, i32 14
  %110 = load i32, i32* %109, align 8
  br label %112

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %107
  %113 = phi i32 [ %110, %107 ], [ 0, %111 ]
  %114 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %115 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %114, i32 0, i32 32
  store i32 %113, i32* %115, align 4
  %116 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %117 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %116, i32 0, i32 13
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %120 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %119, i32 0, i32 31
  store i32 %118, i32* %120, align 8
  %121 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %122 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %121, i32 0, i32 12
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %125 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %124, i32 0, i32 30
  store i32 %123, i32* %125, align 4
  %126 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %127 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %130 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %129, i32 0, i32 29
  store i32 %128, i32* %130, align 8
  %131 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %132 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %135 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %134, i32 0, i32 28
  store i32 %133, i32* %135, align 4
  %136 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %137 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %143 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %142, i32 0, i32 27
  store i32 %141, i32* %143, align 8
  %144 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %145 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %148 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %147, i32 0, i32 26
  store i32 %146, i32* %148, align 4
  %149 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %150 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %153 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %152, i32 0, i32 25
  store i32 %151, i32* %153, align 8
  %154 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %155 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %158 = ashr i32 %156, %157
  %159 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %160 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  %161 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %162 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %165 = ashr i32 %163, %164
  %166 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %167 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %169 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %174 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %173, i32 0, i32 24
  store i32 %172, i32* %174, align 4
  %175 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %176 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %175, i32 0, i32 0
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %181 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %180, i32 0, i32 23
  store i32 %179, i32* %181, align 8
  %182 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %183 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %187 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %186, i32 0, i32 22
  store i32 %185, i32* %187, align 4
  %188 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %189 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %193 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %192, i32 0, i32 21
  store i32 %191, i32* %193, align 8
  %194 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %195 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %194, i32 0, i32 0
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %200 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %199, i32 0, i32 20
  store i32 %198, i32* %200, align 4
  %201 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %202 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %201, i32 0, i32 0
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %207 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %206, i32 0, i32 19
  store i32 %205, i32* %207, align 8
  %208 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %209 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %213 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %212, i32 0, i32 18
  store i32 %211, i32* %213, align 4
  %214 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %215 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @TFO_S_SYNDATA_RCV, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i32
  %223 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %224 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 8
  %225 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %226 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @TFO_S_COOKIEREQ_RECV, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = xor i1 %231, true
  %233 = zext i1 %232 to i32
  %234 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %235 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %234, i32 0, i32 4
  store i32 %233, i32* %235, align 4
  %236 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %237 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @TFO_S_COOKIE_SENT, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %246 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 8
  %247 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %248 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @TFO_S_COOKIE_INVALID, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %257 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %256, i32 0, i32 6
  store i32 %255, i32* %257, align 4
  %258 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %259 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @TFO_S_COOKIE_REQ, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = xor i1 %264, true
  %266 = zext i1 %265 to i32
  %267 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %268 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %267, i32 0, i32 7
  store i32 %266, i32* %268, align 8
  %269 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %270 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @TFO_S_COOKIE_RCV, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  %275 = xor i1 %274, true
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  %278 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %279 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %278, i32 0, i32 8
  store i32 %277, i32* %279, align 4
  %280 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %281 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @TFO_S_SYN_DATA_SENT, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = xor i1 %286, true
  %288 = zext i1 %287 to i32
  %289 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %290 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %289, i32 0, i32 9
  store i32 %288, i32* %290, align 8
  %291 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %292 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @TFO_S_SYN_DATA_ACKED, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  %297 = xor i1 %296, true
  %298 = xor i1 %297, true
  %299 = zext i1 %298 to i32
  %300 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %301 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %300, i32 0, i32 10
  store i32 %299, i32* %301, align 4
  %302 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %303 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @TFO_S_SYN_LOSS, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %312 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %311, i32 0, i32 11
  store i32 %310, i32* %312, align 8
  %313 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %314 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %313, i32 0, i32 6
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @TFO_S_COOKIE_WRONG, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  %319 = xor i1 %318, true
  %320 = xor i1 %319, true
  %321 = zext i1 %320 to i32
  %322 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %323 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %322, i32 0, i32 12
  store i32 %321, i32* %323, align 4
  %324 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %325 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @TFO_S_NO_COOKIE_RCV, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  %330 = xor i1 %329, true
  %331 = xor i1 %330, true
  %332 = zext i1 %331 to i32
  %333 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %334 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %333, i32 0, i32 13
  store i32 %332, i32* %334, align 8
  %335 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %336 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @TFO_S_HEURISTICS_DISABLE, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  %341 = xor i1 %340, true
  %342 = xor i1 %341, true
  %343 = zext i1 %342 to i32
  %344 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %345 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %344, i32 0, i32 14
  store i32 %343, i32* %345, align 4
  %346 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %347 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @TFO_S_SEND_BLACKHOLE, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  %352 = xor i1 %351, true
  %353 = xor i1 %352, true
  %354 = zext i1 %353 to i32
  %355 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %356 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %355, i32 0, i32 15
  store i32 %354, i32* %356, align 8
  %357 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %358 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @TFO_S_RECV_BLACKHOLE, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  %363 = xor i1 %362, true
  %364 = xor i1 %363, true
  %365 = zext i1 %364 to i32
  %366 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %367 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %366, i32 0, i32 16
  store i32 %365, i32* %367, align 4
  %368 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %369 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @TFO_S_ONE_BYTE_PROXY, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  %374 = xor i1 %373, true
  %375 = xor i1 %374, true
  %376 = zext i1 %375 to i32
  %377 = load %struct.tcp_connection_info*, %struct.tcp_connection_info** %4, align 8
  %378 = getelementptr inbounds %struct.tcp_connection_info, %struct.tcp_connection_info* %377, i32 0, i32 17
  store i32 %376, i32* %378, align 8
  br label %379

379:                                              ; preds = %112, %2
  ret void
}

declare dso_local i32 @bzero(%struct.tcp_connection_info*, i32) #1

declare dso_local i64 @TSTMP_SUPPORTED(%struct.tcpcb*) #1

declare dso_local i64 @SACK_ENABLED(%struct.tcpcb*) #1

declare dso_local i64 @TCP_WINDOW_SCALE_ENABLED(%struct.tcpcb*) #1

declare dso_local i64 @TCP_ECN_ENABLED(%struct.tcpcb*) #1

declare dso_local i64 @IN_FASTRECOVERY(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
