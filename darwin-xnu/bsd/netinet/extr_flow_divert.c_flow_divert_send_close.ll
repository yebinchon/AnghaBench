; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32 }

@FLOW_DIVERT_PKT_CLOSE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to create a close packet: %d\00", align 1
@FLOW_DIVERT_TLV_ERROR_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to add the error code TLV: %d\00", align 1
@FLOW_DIVERT_TLV_HOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to add the how flag: %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*, i32)* @flow_divert_send_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_send_close(%struct.flow_divert_pcb* %0, i32 %1) #0 {
  %3 = alloca %struct.flow_divert_pcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %9 = load i32, i32* @FLOW_DIVERT_PKT_CLOSE, align 4
  %10 = call i32 @flow_divert_packet_init(%struct.flow_divert_pcb* %8, i32 %9, i32** %6)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @FDLOG(i32 %14, %struct.flow_divert_pcb* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %51

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @FLOW_DIVERT_TLV_ERROR_CODE, align 4
  %21 = call i32 @flow_divert_packet_append_tlv(i32* %19, i32 %20, i32 4, i32* %7)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @FDLOG(i32 %25, %struct.flow_divert_pcb* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %51

29:                                               ; preds = %18
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @htonl(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @FLOW_DIVERT_TLV_HOW, align 4
  %34 = call i32 @flow_divert_packet_append_tlv(i32* %32, i32 %33, i32 4, i32* %4)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @FDLOG(i32 %38, %struct.flow_divert_pcb* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %51

42:                                               ; preds = %29
  %43 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @flow_divert_send_packet(%struct.flow_divert_pcb* %43, i32* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %49, %37, %24, %13
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @mbuf_free(i32* %58)
  br label %60

60:                                               ; preds = %57, %54, %51
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @flow_divert_packet_init(%struct.flow_divert_pcb*, i32, i32**) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32) #1

declare dso_local i32 @flow_divert_packet_append_tlv(i32*, i32, i32, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @flow_divert_send_packet(%struct.flow_divert_pcb*, i32*, i32) #1

declare dso_local i32 @mbuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
