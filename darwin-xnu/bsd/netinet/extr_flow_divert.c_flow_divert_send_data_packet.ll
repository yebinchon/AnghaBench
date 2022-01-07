; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_data_packet.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_data_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i64 }
%struct.sockaddr = type { i32 }

@FLOW_DIVERT_PKT_DATA = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"flow_divert_packet_init failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"flow_divert_append_target_endpoint_tlv() failed: %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*, i32*, i64, %struct.sockaddr*, i32)* @flow_divert_send_data_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_send_data_packet(%struct.flow_divert_pcb* %0, i32* %1, i64 %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_divert_pcb*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %16 = load i32, i32* @FLOW_DIVERT_PKT_DATA, align 4
  %17 = call i32 @flow_divert_packet_init(%struct.flow_divert_pcb* %15, i32 %16, i32** %12)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @FDLOG(i32 %21, %struct.flow_divert_pcb* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %6, align 4
  br label %81

26:                                               ; preds = %5
  %27 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %28 = icmp ne %struct.sockaddr* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32*, i32** %12, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %32 = call i32 @flow_divert_append_target_endpoint_tlv(i32* %30, %struct.sockaddr* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* @LOG_ERR, align 4
  %37 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @FDLOG(i32 %36, %struct.flow_divert_pcb* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %81

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i64, i64* %9, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32*, i32** %12, align 8
  %50 = call i32* @m_last(i32* %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @mbuf_setnext(i32* %51, i32* %52)
  %54 = load i32*, i32** %12, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @mbuf_pkthdr_adjustlen(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %48, %45, %42
  %58 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @flow_divert_send_packet(%struct.flow_divert_pcb* %58, i32* %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @mbuf_setnext(i32* %65, i32* null)
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @mbuf_freem(i32* %67)
  br label %79

69:                                               ; preds = %57
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %72 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i32 @flow_divert_add_data_statistics(%struct.flow_divert_pcb* %75, i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %69, %64
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %35, %20
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @flow_divert_packet_init(%struct.flow_divert_pcb*, i32, i32**) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32) #1

declare dso_local i32 @flow_divert_append_target_endpoint_tlv(i32*, %struct.sockaddr*) #1

declare dso_local i32* @m_last(i32*) #1

declare dso_local i32 @mbuf_setnext(i32*, i32*) #1

declare dso_local i32 @mbuf_pkthdr_adjustlen(i32*, i64) #1

declare dso_local i32 @flow_divert_send_packet(%struct.flow_divert_pcb*, i32*, i32) #1

declare dso_local i32 @mbuf_freem(i32*) #1

declare dso_local i32 @flow_divert_add_data_statistics(%struct.flow_divert_pcb*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
