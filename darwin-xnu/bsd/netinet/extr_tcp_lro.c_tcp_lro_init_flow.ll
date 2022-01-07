; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_lro.c_tcp_lro_init_flow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_lro.c_tcp_lro_init_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lro_flow = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ip = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.tcphdr = type { i32, i32, i32 }

@lro_flow_list = common dso_local global %struct.lro_flow* null, align 8
@lro_flow_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ip*, %struct.tcphdr*, i32, i32, i32)* @tcp_lro_init_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lro_init_flow(i32 %0, %struct.ip* %1, %struct.tcphdr* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lro_flow*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.ip* %1, %struct.ip** %8, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.lro_flow* null, %struct.lro_flow** %13, align 8
  %14 = load %struct.lro_flow*, %struct.lro_flow** @lro_flow_list, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %14, i64 %16
  store %struct.lro_flow* %17, %struct.lro_flow** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %20 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ip*, %struct.ip** %8, align 8
  %22 = getelementptr inbounds %struct.ip, %struct.ip* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %26 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.ip*, %struct.ip** %8, align 8
  %29 = getelementptr inbounds %struct.ip, %struct.ip* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %33 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %39 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %41 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %44 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** @lro_flow_map, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %52 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %54 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ntohl(i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %61 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %63 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  ret void
}

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
