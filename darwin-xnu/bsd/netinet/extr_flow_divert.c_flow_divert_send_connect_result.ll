; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_connect_result.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_connect_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FLOW_DIVERT_PKT_CONNECT_RESULT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to create a connect result packet: %d\00", align 1
@FLOW_DIVERT_TLV_SPACE_AVAILABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*)* @flow_divert_send_connect_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_send_connect_result(%struct.flow_divert_pcb* %0) #0 {
  %2 = alloca %struct.flow_divert_pcb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %7 = load i32, i32* @FLOW_DIVERT_PKT_CONNECT_RESULT, align 4
  %8 = call i32 @flow_divert_packet_init(%struct.flow_divert_pcb* %6, i32 %7, i32** %4)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @FDLOG(i32 %12, %struct.flow_divert_pcb* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %18 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @htonl(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @FLOW_DIVERT_TLV_SPACE_AVAILABLE, align 4
  %31 = call i32 @flow_divert_packet_append_tlv(i32* %29, i32 %30, i32 4, i32* %5)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %44

35:                                               ; preds = %26
  %36 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @flow_divert_send_packet(%struct.flow_divert_pcb* %36, i32* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %42, %34, %11
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32*, i32** %4, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @mbuf_freem(i32* %51)
  br label %53

53:                                               ; preds = %50, %47, %44
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @flow_divert_packet_init(%struct.flow_divert_pcb*, i32, i32**) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @flow_divert_packet_append_tlv(i32*, i32, i32, i32*) #1

declare dso_local i32 @flow_divert_send_packet(%struct.flow_divert_pcb*, i32*, i32) #1

declare dso_local i32 @mbuf_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
