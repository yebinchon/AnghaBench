; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_w4_l2ca_connect_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_w4_l2ca_connect_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (i32, i32, i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"L2CAP - LCID: 0x%04x  st: W4_L2CA_CON_RSP  evt: %s\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@L2CAP_CONN_OK = common dso_local global i32 0, align 4
@CST_CONFIG = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_CHNL = common dso_local global i32 0, align 4
@L2CAP_CHNL_CFG_TIMEOUT = common dso_local global i32 0, align 4
@L2CAP_CHNL_CONNECT_TOUT_EXT = common dso_local global i32 0, align 4
@L2CAP_CONN_NO_PSM = common dso_local global i32 0, align 4
@CST_W4_L2CAP_DISCONNECT_RSP = common dso_local global i32 0, align 4
@L2CAP_CHNL_DISCONNECT_TOUT = common dso_local global i32 0, align 4
@L2CAP_CHNL_CONNECT_TOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"L2CAP - Calling Connect_Ind_Cb(), CID: 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i8*)* @l2c_csm_w4_l2ca_connect_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2c_csm_w4_l2ca_connect_rsp(%struct.TYPE_14__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32 (i32, i32)**, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = bitcast i32 (i32, i32)* %15 to i32 (i32, i32)**
  store i32 (i32, i32)** %16, i32 (i32, i32)*** %8, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @l2c_csm_get_event_name(i32 %23)
  %25 = call i32 (i8*, i32, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %152 [
    i32 129, label %27
    i32 133, label %39
    i32 132, label %77
    i32 128, label %90
    i32 131, label %105
    i32 135, label %105
    i32 130, label %108
    i32 134, label %119
  ]

27:                                               ; preds = %3
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = call i32 @l2cu_release_ccb(%struct.TYPE_14__* %32)
  %34 = load i32 (i32, i32)**, i32 (i32, i32)*** %8, align 8
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 %35(i32 %36, i32 %37)
  br label %152

39:                                               ; preds = %3
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %7, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @L2CAP_CONN_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44, %39
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = load i32, i32* @L2CAP_CONN_OK, align 4
  %53 = call i32 @l2cu_send_peer_connect_rsp(%struct.TYPE_14__* %51, i32 %52, i32 0)
  %54 = load i32, i32* @CST_CONFIG, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 4
  %59 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %60 = load i32, i32* @L2CAP_CHNL_CFG_TIMEOUT, align 4
  %61 = call i32 @btu_start_timer(i32* %58, i32 %59, i32 %60)
  br label %76

62:                                               ; preds = %44
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @l2cu_send_peer_connect_rsp(%struct.TYPE_14__* %63, i32 %66, i32 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 4
  %73 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %74 = load i32, i32* @L2CAP_CHNL_CONNECT_TOUT_EXT, align 4
  %75 = call i32 @btu_start_timer(i32* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %62, %50
  br label %152

77:                                               ; preds = %3
  %78 = load i8*, i8** %6, align 8
  %79 = bitcast i8* %78 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %7, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @l2cu_send_peer_connect_rsp(%struct.TYPE_14__* %80, i32 %83, i32 %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = call i32 @l2cu_release_ccb(%struct.TYPE_14__* %88)
  br label %152

90:                                               ; preds = %3
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = load i32, i32* @L2CAP_CONN_NO_PSM, align 4
  %93 = call i32 @l2cu_send_peer_connect_rsp(%struct.TYPE_14__* %91, i32 %92, i32 0)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = call i32 @l2cu_release_ccb(%struct.TYPE_14__* %98)
  %100 = load i32 (i32, i32)**, i32 (i32, i32)*** %8, align 8
  %101 = load i32 (i32, i32)*, i32 (i32, i32)** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 %101(i32 %102, i32 %103)
  br label %152

105:                                              ; preds = %3, %3
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @osi_free(i8* %106)
  br label %152

108:                                              ; preds = %3
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = call i32 @l2cu_send_peer_disc_req(%struct.TYPE_14__* %109)
  %111 = load i32, i32* @CST_W4_L2CAP_DISCONNECT_RSP, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %117 = load i32, i32* @L2CAP_CHNL_DISCONNECT_TOUT, align 4
  %118 = call i32 @btu_start_timer(i32* %115, i32 %116, i32 %117)
  br label %152

119:                                              ; preds = %3
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 4
  %122 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %123 = load i32, i32* @L2CAP_CHNL_CONNECT_TOUT, align 4
  %124 = call i32 @btu_start_timer(i32* %121, i32 %122, i32 %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 %134(i32 %139, i32 %142, i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %3, %119, %108, %105, %90, %77, %76, %27
  ret void
}

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i32, ...) #1

declare dso_local i32 @l2c_csm_get_event_name(i32) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_14__*) #1

declare dso_local i32 @l2cu_send_peer_connect_rsp(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @osi_free(i8*) #1

declare dso_local i32 @l2cu_send_peer_disc_req(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
