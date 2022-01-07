; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_input.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32 }
%struct.flow_divert_group = type { i32 }
%struct.flow_divert_packet_header = type { i64, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@nil_pcb = common dso_local global %struct.flow_divert_pcb zeroinitializer, align 4
@.str = private unnamed_addr constant [50 x i8] c"got a bad packet, length (%lu) < sizeof hdr (%lu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FD_CTL_RCVBUFF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"got a bad packet, length (%lu) > %d\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"mbuf_copydata failed for the header: %d\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"got an unknown message type: %d\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"got a %s message from group %d for an unknown pcb: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.flow_divert_group*)* @flow_divert_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_input(i32 %0, %struct.flow_divert_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flow_divert_group*, align 8
  %5 = alloca %struct.flow_divert_packet_header, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_divert_pcb*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.flow_divert_group* %1, %struct.flow_divert_group** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @mbuf_pkthdr_len(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @mbuf_pkthdr_len(i32 %14)
  %16 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %13, %struct.flow_divert_pcb* @nil_pcb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %15, i64 16)
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %6, align 4
  br label %124

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mbuf_pkthdr_len(i32 %19)
  %21 = load i32, i32* @FD_CTL_RCVBUFF_SIZE, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @mbuf_pkthdr_len(i32 %25)
  %27 = load i32, i32* @FD_CTL_RCVBUFF_SIZE, align 4
  %28 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %24, %struct.flow_divert_pcb* @nil_pcb, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %124

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @mbuf_copydata(i32 %31, i32 0, i32 16, %struct.flow_divert_packet_header* %5)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @LOG_ERR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %36, %struct.flow_divert_pcb* @nil_pcb, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENOBUFS, align 4
  store i32 %39, i32* %6, align 4
  br label %124

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @ntohl(i64 %42)
  %44 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %59 [
    i32 130, label %51
    i32 134, label %55
  ]

51:                                               ; preds = %48
  %52 = load %struct.flow_divert_group*, %struct.flow_divert_group** %4, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @flow_divert_handle_group_init(%struct.flow_divert_group* %52, i32 %53, i32 16)
  br label %64

55:                                               ; preds = %48
  %56 = load %struct.flow_divert_group*, %struct.flow_divert_group** %4, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @flow_divert_handle_app_map_create(%struct.flow_divert_group* %56, i32 %57, i32 16)
  br label %64

59:                                               ; preds = %48
  %60 = load i32, i32* @LOG_WARNING, align 4
  %61 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %60, %struct.flow_divert_pcb* @nil_pcb, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %55, %51
  br label %124

65:                                               ; preds = %40
  %66 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.flow_divert_group*, %struct.flow_divert_group** %4, align 8
  %69 = call %struct.flow_divert_pcb* @flow_divert_pcb_lookup(i64 %67, %struct.flow_divert_group* %68)
  store %struct.flow_divert_pcb* %69, %struct.flow_divert_pcb** %7, align 8
  %70 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %71 = icmp eq %struct.flow_divert_pcb* %70, null
  br i1 %71, label %72, label %92

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 133
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 128
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32, i32* @LOG_NOTICE, align 4
  %82 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @flow_divert_packet_type2str(i32 %83)
  %85 = load %struct.flow_divert_group*, %struct.flow_divert_group** %4, align 8
  %86 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %81, %struct.flow_divert_pcb* @nil_pcb, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %87, i64 %89)
  br label %91

91:                                               ; preds = %80, %76, %72
  br label %124

92:                                               ; preds = %65
  %93 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %115 [
    i32 132, label %95
    i32 133, label %99
    i32 131, label %103
    i32 128, label %107
    i32 129, label %111
  ]

95:                                               ; preds = %92
  %96 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @flow_divert_handle_connect_result(%struct.flow_divert_pcb* %96, i32 %97, i32 16)
  br label %121

99:                                               ; preds = %92
  %100 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @flow_divert_handle_close(%struct.flow_divert_pcb* %100, i32 %101, i32 16)
  br label %121

103:                                              ; preds = %92
  %104 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @flow_divert_handle_data(%struct.flow_divert_pcb* %104, i32 %105, i32 16)
  br label %121

107:                                              ; preds = %92
  %108 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @flow_divert_handle_read_notification(%struct.flow_divert_pcb* %108, i32 %109, i32 16)
  br label %121

111:                                              ; preds = %92
  %112 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @flow_divert_handle_properties_update(%struct.flow_divert_pcb* %112, i32 %113, i32 16)
  br label %121

115:                                              ; preds = %92
  %116 = load i32, i32* @LOG_WARNING, align 4
  %117 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %118 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %5, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %116, %struct.flow_divert_pcb* %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %115, %111, %107, %103, %99, %95
  %122 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %123 = call i32 @FDRELEASE(%struct.flow_divert_pcb* %122)
  br label %124

124:                                              ; preds = %121, %91, %64, %35, %23, %12
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @mbuf_freem(i32 %125)
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @mbuf_pkthdr_len(i32) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32, ...) #1

declare dso_local i32 @mbuf_copydata(i32, i32, i32, %struct.flow_divert_packet_header*) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @flow_divert_handle_group_init(%struct.flow_divert_group*, i32, i32) #1

declare dso_local i32 @flow_divert_handle_app_map_create(%struct.flow_divert_group*, i32, i32) #1

declare dso_local %struct.flow_divert_pcb* @flow_divert_pcb_lookup(i64, %struct.flow_divert_group*) #1

declare dso_local i32 @flow_divert_packet_type2str(i32) #1

declare dso_local i32 @flow_divert_handle_connect_result(%struct.flow_divert_pcb*, i32, i32) #1

declare dso_local i32 @flow_divert_handle_close(%struct.flow_divert_pcb*, i32, i32) #1

declare dso_local i32 @flow_divert_handle_data(%struct.flow_divert_pcb*, i32, i32) #1

declare dso_local i32 @flow_divert_handle_read_notification(%struct.flow_divert_pcb*, i32, i32) #1

declare dso_local i32 @flow_divert_handle_properties_update(%struct.flow_divert_pcb*, i32, i32) #1

declare dso_local i32 @FDRELEASE(%struct.flow_divert_pcb*) #1

declare dso_local i32 @mbuf_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
