; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_orig_w4_sec_comp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_orig_w4_sec_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (i64, i32)*, i32 (i64, i32)* }

@.str = private unnamed_addr constant [52 x i8] c"L2CAP - LCID: 0x%04x  st: ORIG_W4_SEC_COMP  evt: %s\00", align 1
@L2CAP_CONNECTIONLESS_CID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@l2c_link_sec_comp = common dso_local global i32 0, align 4
@CST_W4_L2CAP_CONNECT_RSP = common dso_local global i32 0, align 4
@L2CAP_CONN_NO_LINK = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_CHNL = common dso_local global i32 0, align 4
@L2CAP_CHNL_CONNECT_TOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d\00", align 1
@HCI_ERR_AUTH_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i64, i8*)* @l2c_csm_orig_w4_sec_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2c_csm_orig_w4_sec_comp(%struct.TYPE_16__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i64, i32)**, align 8
  %8 = alloca i32 (i64, i32)**, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32 (i64, i32)*, i32 (i64, i32)** %14, align 8
  %16 = bitcast i32 (i64, i32)* %15 to i32 (i64, i32)**
  store i32 (i64, i32)** %16, i32 (i64, i32)*** %7, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32 (i64, i32)*, i32 (i64, i32)** %21, align 8
  %23 = bitcast i32 (i64, i32)* %22 to i32 (i64, i32)**
  store i32 (i64, i32)** %23, i32 (i64, i32)*** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @l2c_csm_get_event_name(i64 %30)
  %32 = call i32 (i8*, i64, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %31)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @L2CAP_CONNECTIONLESS_CID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %3
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @l2c_ucd_process_event(%struct.TYPE_16__* %37, i64 %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %157

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i64, i64* %5, align 8
  switch i64 %45, label %157 [
    i64 131, label %46
    i64 128, label %58
    i64 132, label %58
    i64 130, label %77
    i64 129, label %109
    i64 134, label %145
    i64 135, label %145
    i64 133, label %148
  ]

46:                                               ; preds = %44
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, i64, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = call i32 @l2cu_release_ccb(%struct.TYPE_16__* %51)
  %53 = load i32 (i64, i32)**, i32 (i64, i32)*** %7, align 8
  %54 = load i32 (i64, i32)*, i32 (i64, i32)** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 %54(i64 %55, i32 %56)
  br label %157

58:                                               ; preds = %44, %44
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TRUE, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = call i32 @btm_sec_l2cap_access_req(i32 %63, i32 %68, i32 %73, i32 %74, i32* @l2c_link_sec_comp, %struct.TYPE_16__* %75)
  br label %157

77:                                               ; preds = %44
  %78 = load i32, i32* @CST_W4_L2CAP_CONNECT_RSP, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %77
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = call i32 @l2c_fcr_chk_chan_modes(%struct.TYPE_16__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = call i32 @l2cu_release_ccb(%struct.TYPE_16__* %92)
  %94 = load i32 (i64, i32)**, i32 (i64, i32)*** %8, align 8
  %95 = load i32 (i64, i32)*, i32 (i64, i32)** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* @L2CAP_CONN_NO_LINK, align 4
  %98 = call i32 %95(i64 %96, i32 %97)
  br label %107

99:                                               ; preds = %87
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %103 = load i32, i32* @L2CAP_CHNL_CONNECT_TOUT, align 4
  %104 = call i32 @btu_start_timer(i32* %101, i32 %102, i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = call i32 @l2cu_send_peer_connect_req(%struct.TYPE_16__* %105)
  br label %107

107:                                              ; preds = %99, %91
  br label %108

108:                                              ; preds = %107, %77
  br label %157

109:                                              ; preds = %44
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @HCI_ERR_AUTH_FAILURE, align 4
  %114 = call i32 (i8*, i64, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %112, i32 %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = icmp eq %struct.TYPE_16__* %115, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %109
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = icmp eq %struct.TYPE_16__* %124, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %123
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %132, %123, %109
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = call i32 @l2cu_release_ccb(%struct.TYPE_16__* %138)
  %140 = load i32 (i64, i32)**, i32 (i64, i32)*** %8, align 8
  %141 = load i32 (i64, i32)*, i32 (i64, i32)** %140, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load i32, i32* @HCI_ERR_AUTH_FAILURE, align 4
  %144 = call i32 %141(i64 %142, i32 %143)
  br label %157

145:                                              ; preds = %44, %44
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @osi_free(i8* %146)
  br label %157

148:                                              ; preds = %44
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @btm_sec_abort_access_req(i32 %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %156 = call i32 @l2cu_release_ccb(%struct.TYPE_16__* %155)
  br label %157

157:                                              ; preds = %42, %44, %148, %145, %137, %108, %58, %46
  ret void
}

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i64, ...) #1

declare dso_local i32 @l2c_csm_get_event_name(i64) #1

declare dso_local i64 @l2c_ucd_process_event(%struct.TYPE_16__*, i64, i8*) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i64, ...) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_16__*) #1

declare dso_local i32 @btm_sec_l2cap_access_req(i32, i32, i32, i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @l2c_fcr_chk_chan_modes(%struct.TYPE_16__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @l2cu_send_peer_connect_req(%struct.TYPE_16__*) #1

declare dso_local i32 @osi_free(i8*) #1

declare dso_local i32 @btm_sec_abort_access_req(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
