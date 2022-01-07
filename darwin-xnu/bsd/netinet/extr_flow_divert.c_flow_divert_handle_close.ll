; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_handle_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_handle_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@FLOW_DIVERT_TLV_ERROR_CODE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to get the close error: %d\00", align 1
@FLOW_DIVERT_TLV_HOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to get the close how flag: %d\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"close received, how = %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@SHUT_RD = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_divert_pcb*, i32, i32)* @flow_divert_handle_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_divert_handle_close(%struct.flow_divert_pcb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.flow_divert_pcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @FLOW_DIVERT_TLV_ERROR_CODE, align 4
  %13 = call i32 @flow_divert_packet_get_tlv(i32 %10, i32 %11, i32 %12, i32 4, i32* %7, i32* null)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @LOG_ERR, align 4
  %18 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @FDLOG(i32 %17, %struct.flow_divert_pcb* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %100

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FLOW_DIVERT_TLV_HOW, align 4
  %25 = call i32 @flow_divert_packet_get_tlv(i32 %22, i32 %23, i32 %24, i32 4, i32* %9, i32* null)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @FDLOG(i32 %29, %struct.flow_divert_pcb* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %100

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = call i8* @ntohl(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @LOG_INFO, align 4
  %38 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @FDLOG(i32 %37, %struct.flow_divert_pcb* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %42 = call i32 @FDLOCK(%struct.flow_divert_pcb* %41)
  %43 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %44 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %97

47:                                               ; preds = %33
  %48 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %49 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @socket_lock(%struct.TYPE_6__* %50, i32 0)
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @ntohl(i32 %52)
  %54 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %55 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i8* %53, i8** %57, align 8
  %58 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @flow_divert_update_closed_state(%struct.flow_divert_pcb* %58, i32 %59, i32 %60)
  %62 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %63 = call i32 @flow_divert_tunnel_how_closed(%struct.flow_divert_pcb* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @SHUT_RDWR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %47
  %68 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %69 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @flow_divert_disconnect_socket(%struct.TYPE_6__* %70)
  br label %92

72:                                               ; preds = %47
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SHUT_RD, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %78 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = call i32 @socantrcvmore(%struct.TYPE_6__* %79)
  br label %91

81:                                               ; preds = %72
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @SHUT_WR, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %87 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i32 @socantsendmore(%struct.TYPE_6__* %88)
  br label %90

90:                                               ; preds = %85, %81
  br label %91

91:                                               ; preds = %90, %76
  br label %92

92:                                               ; preds = %91, %67
  %93 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %94 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = call i32 @socket_unlock(%struct.TYPE_6__* %95, i32 0)
  br label %97

97:                                               ; preds = %92, %33
  %98 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %99 = call i32 @FDUNLOCK(%struct.flow_divert_pcb* %98)
  br label %100

100:                                              ; preds = %97, %28, %16
  ret void
}

declare dso_local i32 @flow_divert_packet_get_tlv(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @FDLOCK(%struct.flow_divert_pcb*) #1

declare dso_local i32 @socket_lock(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @flow_divert_update_closed_state(%struct.flow_divert_pcb*, i32, i32) #1

declare dso_local i32 @flow_divert_tunnel_how_closed(%struct.flow_divert_pcb*) #1

declare dso_local i32 @flow_divert_disconnect_socket(%struct.TYPE_6__*) #1

declare dso_local i32 @socantrcvmore(%struct.TYPE_6__*) #1

declare dso_local i32 @socantsendmore(%struct.TYPE_6__*) #1

declare dso_local i32 @socket_unlock(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @FDUNLOCK(%struct.flow_divert_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
