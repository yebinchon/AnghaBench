; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_create_ifnet_stats_per_flow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_create_ifnet_stats_per_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, %struct.inpcb* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.inpcb = type { i32, %struct.TYPE_8__*, %struct.socket* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.socket = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ifnet_stats_per_flow = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INP_IPV6 = common dso_local global i32 0, align 4
@TF_LOCAL = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@MBUF_TC_BK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.ifnet_stats_per_flow*)* @tcp_create_ifnet_stats_per_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_create_ifnet_stats_per_flow(%struct.tcpcb* %0, %struct.ifnet_stats_per_flow* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.ifnet_stats_per_flow*, align 8
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.socket*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.ifnet_stats_per_flow* %1, %struct.ifnet_stats_per_flow** %4, align 8
  %7 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %8 = icmp eq %struct.tcpcb* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %11 = icmp eq %struct.ifnet_stats_per_flow* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %201

13:                                               ; preds = %9
  %14 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %15 = call i32 @bzero(%struct.ifnet_stats_per_flow* %14, i32 104)
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 13
  %18 = load %struct.inpcb*, %struct.inpcb** %17, align 8
  store %struct.inpcb* %18, %struct.inpcb** %5, align 8
  %19 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 2
  %21 = load %struct.socket*, %struct.socket** %20, align 8
  store %struct.socket* %21, %struct.socket** %6, align 8
  %22 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %23 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @INP_IPV6, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  %30 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TF_LOCAL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.socket*, %struct.socket** %6, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ECONNRESET, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.socket*, %struct.socket** %6, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ETIMEDOUT, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %64 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %63, i32 0, i32 22
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 11
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %70 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %69, i32 0, i32 21
  store i32 %68, i32* %70, align 4
  %71 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %72 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %71, i32 0, i32 11
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %75, i32 0, i32 20
  store i32 %74, i32* %76, align 8
  %77 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %78 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %77, i32 0, i32 11
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %82 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %81, i32 0, i32 19
  store i32 %80, i32* %82, align 4
  %83 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %87 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %86, i32 0, i32 18
  store i32 %85, i32* %87, align 8
  %88 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %89 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %92 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %91, i32 0, i32 17
  store i32 %90, i32* %92, align 4
  %93 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %97 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %96, i32 0, i32 16
  store i32 %95, i32* %97, align 8
  %98 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %99 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %102 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %101, i32 0, i32 15
  store i32 %100, i32* %102, align 4
  %103 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %104 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %107 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %106, i32 0, i32 14
  store i32 %105, i32* %107, align 8
  %108 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %109 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %112 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %111, i32 0, i32 13
  store i32 %110, i32* %112, align 4
  %113 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %114 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %117 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %116, i32 0, i32 12
  store i32 %115, i32* %117, align 8
  %118 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %119 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %122 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %121, i32 0, i32 11
  store i32 %120, i32* %122, align 4
  %123 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %124 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %127 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %126, i32 0, i32 10
  store i32 %125, i32* %127, align 8
  %128 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %129 = call i32 @get_base_rtt(%struct.tcpcb* %128)
  %130 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %131 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %130, i32 0, i32 9
  store i32 %129, i32* %131, align 4
  %132 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %133 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = icmp ne %struct.TYPE_6__* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %13
  %137 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %138 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %145 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %150 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %149, i32 0, i32 4
  store i64 %148, i64* %150, align 8
  br label %154

151:                                              ; preds = %136, %13
  %152 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %153 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %143
  %155 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %156 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %155, i32 0, i32 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = icmp ne %struct.TYPE_6__* %157, null
  br i1 %158, label %159, label %174

159:                                              ; preds = %154
  %160 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %161 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %160, i32 0, i32 1
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  %167 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %168 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %173 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %172, i32 0, i32 5
  store i64 %171, i64* %173, align 8
  br label %177

174:                                              ; preds = %159, %154
  %175 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %176 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %175, i32 0, i32 5
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %174, %166
  %178 = load %struct.socket*, %struct.socket** %6, align 8
  %179 = getelementptr inbounds %struct.socket, %struct.socket* %178, i32 0, i32 1
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load i64, i64* @MBUF_TC_BK, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %186 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 8
  %187 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %188 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %187, i32 0, i32 1
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %193 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %192, i32 0, i32 7
  store i32 %191, i32* %193, align 4
  %194 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %195 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %194, i32 0, i32 1
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %4, align 8
  %200 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %199, i32 0, i32 6
  store i32 %198, i32* %200, align 8
  br label %201

201:                                              ; preds = %177, %12
  ret void
}

declare dso_local i32 @bzero(%struct.ifnet_stats_per_flow*, i32) #1

declare dso_local i32 @get_base_rtt(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
