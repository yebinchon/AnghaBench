; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_tfo_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_tfo_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tcpcb = type { i32, i32, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.socket* }
%struct.socket = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@TF_NOOPT = common dso_local global i32 0, align 4
@SOF1_DATA_AUTHENTICATED = common dso_local global i32 0, align 4
@TF_FASTOPEN_HEUR = common dso_local global i32 0, align 4
@TFO_S_HEURISTICS_DISABLE = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@TCPOLEN_MAXSEG = common dso_local global i64 0, align 8
@TF_REQ_SCALE = common dso_local global i32 0, align 4
@TF_REQ_TSTMP = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_APPA = common dso_local global i64 0, align 8
@TCPOLEN_SACK_PERMITTED = common dso_local global i64 0, align 8
@MAX_TCPOPTLEN = common dso_local global i32 0, align 4
@TCPOLEN_FASTOPEN_REQ = common dso_local global i32 0, align 4
@TF_FASTOPEN = common dso_local global i32 0, align 4
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@mptcp_enable = common dso_local global i64 0, align 8
@mptcp_mpcap_retries = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, i32)* @tcp_tfo_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_tfo_check(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 5
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TF_NOOPT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %130

21:                                               ; preds = %2
  %22 = load %struct.socket*, %struct.socket** %6, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SOF1_DATA_AUTHENTICATED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TF_FASTOPEN_HEUR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %3, align 4
  br label %137

37:                                               ; preds = %28, %21
  %38 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %39 = call i32 @tcp_heuristic_do_tfo(%struct.tcpcb* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @TFO_S_HEURISTICS_DISABLE, align 4
  %43 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tcpstat, i32 0, i32 0), align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tcpstat, i32 0, i32 0), align 4
  br label %130

49:                                               ; preds = %37
  %50 = load %struct.socket*, %struct.socket** %6, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SOF1_DATA_AUTHENTICATED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %3, align 4
  br label %137

58:                                               ; preds = %49
  %59 = load i64, i64* @TCPOLEN_MAXSEG, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TF_REQ_SCALE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %58
  %74 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TF_REQ_TSTMP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i64, i64* @TCPOLEN_TSTAMP_APPA, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %88 = call i64 @SACK_ENABLED(%struct.tcpcb* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i64, i64* @TCPOLEN_SACK_PERMITTED, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %90, %86
  %97 = load i32, i32* @MAX_TCPOPTLEN, align 4
  %98 = load i32, i32* %7, align 4
  %99 = sub i32 %97, %98
  %100 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %130

103:                                              ; preds = %96
  %104 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %105 = call i32 @tcp_cache_get_cookie_len(%struct.tcpcb* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %137

109:                                              ; preds = %103
  %110 = load i32, i32* @MAX_TCPOPTLEN, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sub i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %130

116:                                              ; preds = %109
  %117 = load %struct.socket*, %struct.socket** %6, align 8
  %118 = getelementptr inbounds %struct.socket, %struct.socket* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %122 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @MAX_TCPOPTLEN, align 4
  %125 = sub i32 %123, %124
  %126 = icmp ugt i32 %120, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  br label %130

128:                                              ; preds = %116
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %3, align 4
  br label %137

130:                                              ; preds = %127, %115, %102, %41, %20
  %131 = load i32, i32* @TF_FASTOPEN, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %134 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 4
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %130, %128, %108, %56, %35
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @tcp_heuristic_do_tfo(%struct.tcpcb*) #1

declare dso_local i64 @SACK_ENABLED(%struct.tcpcb*) #1

declare dso_local i32 @tcp_cache_get_cookie_len(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
