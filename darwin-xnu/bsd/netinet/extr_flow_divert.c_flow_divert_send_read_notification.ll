; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_read_notification.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_read_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32 }

@FLOW_DIVERT_PKT_READ_NOTIFY = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to create a read notification packet: %d\00", align 1
@FLOW_DIVERT_TLV_READ_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to add the read count: %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*, i32)* @flow_divert_send_read_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_send_read_notification(%struct.flow_divert_pcb* %0, i32 %1) #0 {
  %3 = alloca %struct.flow_divert_pcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @htonl(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %11 = load i32, i32* @FLOW_DIVERT_PKT_READ_NOTIFY, align 4
  %12 = call i32 @flow_divert_packet_init(%struct.flow_divert_pcb* %10, i32 %11, i32** %6)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @FDLOG(i32 %16, %struct.flow_divert_pcb* %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %40

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @FLOW_DIVERT_TLV_READ_COUNT, align 4
  %23 = call i32 @flow_divert_packet_append_tlv(i32* %21, i32 %22, i32 4, i32* %7)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @FDLOG(i32 %27, %struct.flow_divert_pcb* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %40

31:                                               ; preds = %20
  %32 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @flow_divert_send_packet(%struct.flow_divert_pcb* %32, i32* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %38, %26, %15
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @mbuf_free(i32* %47)
  br label %49

49:                                               ; preds = %46, %43, %40
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @htonl(i32) #1

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
