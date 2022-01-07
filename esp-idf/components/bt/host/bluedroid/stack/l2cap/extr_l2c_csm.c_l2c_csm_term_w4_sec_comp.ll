; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_term_w4_sec_comp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_term_w4_sec_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_12__*, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i32, i64, i32, i32)* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"L2CAP - LCID: 0x%04x  st: TERM_W4_SEC_COMP  evt: %s\00", align 1
@L2CAP_CONNECTIONLESS_CID = common dso_local global i64 0, align 8
@CST_W4_L2CA_CONNECT_RSP = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_CHNL = common dso_local global i32 0, align 4
@L2CAP_CHNL_CONNECT_TOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"L2CAP - Calling Connect_Ind_Cb(), CID: 0x%04x\00", align 1
@L2CAP_CONN_PENDING = common dso_local global i32 0, align 4
@BTM_DELAY_CHECK = common dso_local global i32 0, align 4
@L2CAP_DELAY_CHECK_SM4 = common dso_local global i32 0, align 4
@L2CAP_CONN_SECURITY_BLOCK = common dso_local global i32 0, align 4
@HCI_ERR_AUTH_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"L2CAP - Calling btsnd_hcic_disconnect for handle %i failed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@l2c_link_sec_comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i8*)* @l2c_csm_term_w4_sec_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2c_csm_term_w4_sec_comp(%struct.TYPE_14__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @l2c_csm_get_event_name(i32 %11)
  %13 = call i32 (i8*, i32, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @L2CAP_CONNECTIONLESS_CID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @l2c_ucd_process_event(%struct.TYPE_14__* %20, i32 %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %174

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %174 [
    i32 132, label %29
    i32 131, label %38
    i32 130, label %86
    i32 134, label %106
    i32 136, label %106
    i32 133, label %109
    i32 135, label %112
    i32 128, label %134
    i32 129, label %155
  ]

29:                                               ; preds = %27
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @btm_sec_abort_access_req(i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = call i32 @l2cu_release_ccb(%struct.TYPE_14__* %36)
  br label %174

38:                                               ; preds = %27
  %39 = load i32, i32* @CST_W4_L2CA_CONNECT_RSP, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %81, label %48

48:                                               ; preds = %38
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 3
  %51 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %52 = load i32, i32* @L2CAP_CHNL_CONNECT_TOUT, align 4
  %53 = call i32 @btu_start_timer(i32* %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %62, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %63(i32 %68, i64 %71, i32 %76, i32 %79)
  br label %85

81:                                               ; preds = %38
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = load i32, i32* @L2CAP_CONN_PENDING, align 4
  %84 = call i32 @l2cu_send_peer_connect_rsp(%struct.TYPE_14__* %82, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %81, %48
  br label %174

86:                                               ; preds = %27
  %87 = load i8*, i8** %6, align 8
  %88 = bitcast i8* %87 to %struct.TYPE_13__*
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BTM_DELAY_CHECK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %97 = load i32, i32* @L2CAP_DELAY_CHECK_SM4, align 4
  %98 = call i32 @btu_start_timer(i32* %95, i32 %96, i32 %97)
  br label %105

99:                                               ; preds = %86
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = load i32, i32* @L2CAP_CONN_SECURITY_BLOCK, align 4
  %102 = call i32 @l2cu_send_peer_connect_rsp(%struct.TYPE_14__* %100, i32 %101, i32 0)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = call i32 @l2cu_release_ccb(%struct.TYPE_14__* %103)
  br label %105

105:                                              ; preds = %99, %93
  br label %174

106:                                              ; preds = %27, %27
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @osi_free(i8* %107)
  br label %174

109:                                              ; preds = %27
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = call i32 @l2cu_release_ccb(%struct.TYPE_14__* %110)
  br label %174

112:                                              ; preds = %27
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @l2cu_send_peer_disc_rsp(%struct.TYPE_15__* %115, i32 %118, i64 %121, i32 %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @btm_sec_abort_access_req(i32 %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = call i32 @l2cu_release_ccb(%struct.TYPE_14__* %132)
  br label %174

134:                                              ; preds = %27
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @HCI_ERR_AUTH_FAILURE, align 4
  %141 = call i32 @btsnd_hcic_disconnect(i64 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %134
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %148)
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 3
  %152 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %153 = call i32 @btu_start_timer(i32* %151, i32 %152, i32 1)
  br label %154

154:                                              ; preds = %143, %134
  br label %174

155:                                              ; preds = %27
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @FALSE, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %173 = call i32 @btm_sec_l2cap_access_req(i32 %160, i32 %165, i64 %170, i32 %171, i32* @l2c_link_sec_comp, %struct.TYPE_14__* %172)
  br label %174

174:                                              ; preds = %25, %27, %155, %154, %112, %109, %106, %105, %85, %29
  ret void
}

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i32, ...) #1

declare dso_local i32 @l2c_csm_get_event_name(i32) #1

declare dso_local i64 @l2c_ucd_process_event(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @btm_sec_abort_access_req(i32) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_14__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i64) #1

declare dso_local i32 @l2cu_send_peer_connect_rsp(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @osi_free(i8*) #1

declare dso_local i32 @l2cu_send_peer_disc_rsp(%struct.TYPE_15__*, i32, i64, i32) #1

declare dso_local i32 @btsnd_hcic_disconnect(i64, i32) #1

declare dso_local i32 @btm_sec_l2cap_access_req(i32, i32, i64, i32, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
