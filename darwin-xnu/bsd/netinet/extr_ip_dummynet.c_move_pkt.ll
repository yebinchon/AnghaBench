; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_move_pkt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_move_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.dn_flow_queue = type { i32, i32, %struct.mbuf* }
%struct.dn_pipe = type { %struct.mbuf*, %struct.mbuf*, i64 }
%struct.dn_pkt_tag = type { i64 }

@curr_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.dn_flow_queue*, %struct.dn_pipe*, i32)* @move_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_pkt(%struct.mbuf* %0, %struct.dn_flow_queue* %1, %struct.dn_pipe* %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.dn_flow_queue*, align 8
  %7 = alloca %struct.dn_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dn_pkt_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store %struct.dn_flow_queue* %1, %struct.dn_flow_queue** %6, align 8
  store %struct.dn_pipe* %2, %struct.dn_pipe** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %11 = call %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf* %10)
  store %struct.dn_pkt_tag* %11, %struct.dn_pkt_tag** %9, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %15 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %16 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %15, i32 0, i32 2
  store %struct.mbuf* %14, %struct.mbuf** %16, align 8
  %17 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %18 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %23 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i64, i64* @curr_time, align 8
  %27 = load %struct.dn_pipe*, %struct.dn_pipe** %7, align 8
  %28 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %9, align 8
  %32 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.dn_pipe*, %struct.dn_pipe** %7, align 8
  %34 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %33, i32 0, i32 1
  %35 = load %struct.mbuf*, %struct.mbuf** %34, align 8
  %36 = icmp eq %struct.mbuf* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = load %struct.dn_pipe*, %struct.dn_pipe** %7, align 8
  %40 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %39, i32 0, i32 1
  store %struct.mbuf* %38, %struct.mbuf** %40, align 8
  br label %47

41:                                               ; preds = %4
  %42 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %43 = load %struct.dn_pipe*, %struct.dn_pipe** %7, align 8
  %44 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %43, i32 0, i32 0
  %45 = load %struct.mbuf*, %struct.mbuf** %44, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  store %struct.mbuf* %42, %struct.mbuf** %46, align 8
  br label %47

47:                                               ; preds = %41, %37
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = load %struct.dn_pipe*, %struct.dn_pipe** %7, align 8
  %50 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %49, i32 0, i32 0
  store %struct.mbuf* %48, %struct.mbuf** %50, align 8
  %51 = load %struct.dn_pipe*, %struct.dn_pipe** %7, align 8
  %52 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %51, i32 0, i32 0
  %53 = load %struct.mbuf*, %struct.mbuf** %52, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %54, align 8
  ret void
}

declare dso_local %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
