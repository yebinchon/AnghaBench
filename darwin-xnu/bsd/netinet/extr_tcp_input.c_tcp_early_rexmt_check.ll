; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_early_rexmt_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_early_rexmt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.tcpcb = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tcphdr = type { i32 }

@early_rexmt = common dso_local global i64 0, align 8
@TCP_EARLY_REXMT_LIMIT = common dso_local global i64 0, align 8
@tcprexmtthresh = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i32 0, align 4
@TF_SENT_TLPROBE = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@TCP_CC_TLP_RECOVERY = common dso_local global i32 0, align 4
@TCP_CC_EARLY_RETRANSMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*)* @tcp_early_rexmt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_early_rexmt_check(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %10 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 14
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.socket*, %struct.socket** %13, align 8
  store %struct.socket* %14, %struct.socket** %8, align 8
  %15 = load i64, i64* @early_rexmt, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %196

17:                                               ; preds = %2
  %18 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %19 = call i64 @SACK_ENABLED(%struct.tcpcb* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TCP_EARLY_REXMT_LIMIT, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %196

27:                                               ; preds = %21, %17
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @SEQ_GT(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %196

36:                                               ; preds = %27
  %37 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %38 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %43 = call i64 @SACK_ENABLED(%struct.tcpcb* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %196

45:                                               ; preds = %41
  %46 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 13
  %48 = call i32 @TAILQ_EMPTY(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %196, label %50

50:                                               ; preds = %45, %36
  %51 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %52 = call i64 @SACK_ENABLED(%struct.tcpcb* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 13
  %57 = call i32 @TAILQ_EMPTY(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %54
  %60 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %62, %65
  %67 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %68 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %67, i32 0, i32 12
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %5, align 4
  br label %80

72:                                               ; preds = %54, %50
  %73 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %77 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %72, %59
  %81 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %82 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  store i32 %87, i32* %6, align 4
  %88 = load %struct.socket*, %struct.socket** %8, align 8
  %89 = getelementptr inbounds %struct.socket, %struct.socket* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %93 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @min(i32 %91, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %7, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %101 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = shl i32 %102, 2
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %195

105:                                              ; preds = %80
  %106 = load i64, i64* %7, align 8
  %107 = icmp sle i64 %106, 0
  br i1 %107, label %108, label %195

108:                                              ; preds = %105
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %111 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %109, %112
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %116 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %121, %108
  %125 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %126 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %132, label %194

132:                                              ; preds = %124
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %133, 1
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %137, 1
  br label %140

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %136
  %141 = phi i32 [ %138, %136 ], [ 1, %139 ]
  %142 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %143 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 4
  %144 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %145 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @tcprexmtthresh, align 4
  %148 = call i32 @min(i32 %146, i32 %147)
  %149 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %150 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 4
  %151 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %152 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %155 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @max(i32 %153, i32 %156)
  %158 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %159 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 4
  %160 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %161 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %140
  %165 = load i32, i32* @tcp_now, align 4
  %166 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %167 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %166, i32 0, i32 10
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %164, %140
  %169 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %170 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @TF_SENT_TLPROBE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %168
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 1), align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 1), align 4
  %178 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %179 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %180 = load i32, i32* @TCP_CC_TLP_RECOVERY, align 4
  %181 = call i32 @tcp_ccdbg_trace(%struct.tcpcb* %178, %struct.tcphdr* %179, i32 %180)
  br label %193

182:                                              ; preds = %168
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 0), align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 0), align 4
  %185 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %186 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %186, align 8
  %189 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %190 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %191 = load i32, i32* @TCP_CC_EARLY_RETRANSMIT, align 4
  %192 = call i32 @tcp_ccdbg_trace(%struct.tcpcb* %189, %struct.tcphdr* %190, i32 %191)
  br label %193

193:                                              ; preds = %182, %175
  br label %194

194:                                              ; preds = %193, %124
  br label %195

195:                                              ; preds = %194, %105, %80
  br label %196

196:                                              ; preds = %195, %45, %41, %27, %21, %2
  %197 = load i32, i32* @TF_SENT_TLPROBE, align 4
  %198 = xor i32 %197, -1
  %199 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %200 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %204 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %203, i32 0, i32 9
  store i64 0, i64* %204, align 8
  %205 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %206 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %205, i32 0, i32 8
  store i64 0, i64* %206, align 8
  ret void
}

declare dso_local i64 @SACK_ENABLED(%struct.tcpcb*) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @tcp_ccdbg_trace(%struct.tcpcb*, %struct.tcphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
