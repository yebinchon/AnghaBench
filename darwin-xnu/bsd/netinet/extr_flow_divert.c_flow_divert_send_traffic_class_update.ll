; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_traffic_class_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_traffic_class_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32 }

@FLOW_DIVERT_PKT_PROPERTIES_UPDATE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to create a properties update packet: %d\00", align 1
@FLOW_DIVERT_TLV_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to add the traffic class: %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*, i32)* @flow_divert_send_traffic_class_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_send_traffic_class_update(%struct.flow_divert_pcb* %0, i32 %1) #0 {
  %3 = alloca %struct.flow_divert_pcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %7 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %8 = load i32, i32* @FLOW_DIVERT_PKT_PROPERTIES_UPDATE, align 4
  %9 = call i32 @flow_divert_packet_init(%struct.flow_divert_pcb* %7, i32 %8, i32** %6)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @FDLOG(i32 %13, %struct.flow_divert_pcb* %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %37

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @FLOW_DIVERT_TLV_TRAFFIC_CLASS, align 4
  %20 = call i32 @flow_divert_packet_append_tlv(i32* %18, i32 %19, i32 4, i32* %4)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @FDLOG(i32 %24, %struct.flow_divert_pcb* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %37

28:                                               ; preds = %17
  %29 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @flow_divert_send_packet(%struct.flow_divert_pcb* %29, i32* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %35, %23, %12
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @mbuf_free(i32* %44)
  br label %46

46:                                               ; preds = %43, %40, %37
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @flow_divert_packet_init(%struct.flow_divert_pcb*, i32, i32**) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32) #1

declare dso_local i32 @flow_divert_packet_append_tlv(i32*, i32, i32, i32*) #1

declare dso_local i32 @flow_divert_send_packet(%struct.flow_divert_pcb*, i32*, i32) #1

declare dso_local i32 @mbuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
