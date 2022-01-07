; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_w4_l2cap_connect_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_w4_l2cap_connect_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (i32)*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"L2CAP - LCID: 0x%04x  st: W4_L2CAP_CON_RSP  evt: %s\00", align 1
@CST_CLOSED = common dso_local global i32 0, align 4
@CCB_FLAG_NO_RETRY = common dso_local global i32 0, align 4
@HCI_ERR_PEER_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CST_CONFIG = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_CHNL = common dso_local global i32 0, align 4
@L2CAP_CHNL_CFG_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Success\00", align 1
@L2CAP_CONN_OK = common dso_local global i32 0, align 4
@L2CAP_CHNL_CONNECT_TOUT_EXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"L2CAP - Calling Connect_Pnd_Cb(), CID: 0x%04x\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Failure Code: %d\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Timeout\00", align 1
@L2CAP_CONN_TIMEOUT = common dso_local global i32 0, align 4
@CST_W4_L2CAP_DISCONNECT_RSP = common dso_local global i32 0, align 4
@L2CAP_CHNL_DISCONNECT_TOUT = common dso_local global i32 0, align 4
@L2CAP_CONN_NO_LINK = common dso_local global i32 0, align 4
@L2CAP_CHNL_CONNECT_TOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i8*)* @l2c_csm_w4_l2cap_connect_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2c_csm_w4_l2cap_connect_rsp(%struct.TYPE_13__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32 (i32, i32)**, align 8
  %9 = alloca i32 (i32, i32)**, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = bitcast i32 (i32, i32)* %18 to i32 (i32, i32)**
  store i32 (i32, i32)** %19, i32 (i32, i32)*** %8, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = bitcast i32 (i32, i32)* %25 to i32 (i32, i32)**
  store i32 (i32, i32)** %26, i32 (i32, i32)*** %9, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @l2c_csm_get_event_name(i32 %33)
  %35 = call i32 (i8*, i32, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %208 [
    i32 129, label %37
    i32 136, label %74
    i32 134, label %101
    i32 135, label %135
    i32 128, label %152
    i32 130, label %164
    i32 131, label %184
    i32 133, label %184
    i32 132, label %187
  ]

37:                                               ; preds = %3
  %38 = load i32, i32* @CST_CLOSED, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CCB_FLAG_NO_RETRY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %37
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HCI_ERR_PEER_USER, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50, %47, %37
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = call i32 @l2cu_release_ccb(%struct.TYPE_13__* %61)
  %63 = load i32 (i32, i32)**, i32 (i32, i32)*** %8, align 8
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = call i32 %64(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %56, %50
  %69 = load i32, i32* @CCB_FLAG_NO_RETRY, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %208

74:                                               ; preds = %3
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @CST_CONFIG, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %86 = load i32, i32* @L2CAP_CHNL_CFG_TIMEOUT, align 4
  %87 = call i32 @btu_start_timer(i32* %84, i32 %85, i32 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32 (i32, i32)*, i32 (i32, i32)** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @L2CAP_CONN_OK, align 4
  %100 = call i32 %97(i32 %98, i32 %99)
  br label %208

101:                                              ; preds = %3
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %110 = load i32, i32* @L2CAP_CHNL_CONNECT_TOUT_EXT, align 4
  %111 = call i32 @btu_start_timer(i32* %108, i32 %109, i32 %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32 (i32)*, i32 (i32)** %116, align 8
  %118 = icmp ne i32 (i32)* %117, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %101
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32 (i32)*, i32 (i32)** %128, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 %129(i32 %132)
  br label %134

134:                                              ; preds = %119, %101
  br label %208

135:                                              ; preds = %3
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %138, i32 %141)
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = call i32 @l2cu_release_ccb(%struct.TYPE_13__* %143)
  %145 = load i32 (i32, i32)**, i32 (i32, i32)*** %9, align 8
  %146 = load i32 (i32, i32)*, i32 (i32, i32)** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 %146(i32 %147, i32 %150)
  br label %208

152:                                              ; preds = %3
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = call i32 @l2cu_release_ccb(%struct.TYPE_13__* %157)
  %159 = load i32 (i32, i32)**, i32 (i32, i32)*** %9, align 8
  %160 = load i32 (i32, i32)*, i32 (i32, i32)** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @L2CAP_CONN_TIMEOUT, align 4
  %163 = call i32 %160(i32 %161, i32 %162)
  br label %208

164:                                              ; preds = %3
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %171 = call i32 @l2cu_send_peer_disc_req(%struct.TYPE_13__* %170)
  %172 = load i32, i32* @CST_W4_L2CAP_DISCONNECT_RSP, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 2
  %177 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %178 = load i32, i32* @L2CAP_CHNL_DISCONNECT_TOUT, align 4
  %179 = call i32 @btu_start_timer(i32* %176, i32 %177, i32 %178)
  br label %183

180:                                              ; preds = %164
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %182 = call i32 @l2cu_release_ccb(%struct.TYPE_13__* %181)
  br label %183

183:                                              ; preds = %180, %169
  br label %208

184:                                              ; preds = %3, %3
  %185 = load i8*, i8** %6, align 8
  %186 = call i32 @osi_free(i8* %185)
  br label %208

187:                                              ; preds = %3
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %189 = call i32 @l2c_fcr_chk_chan_modes(%struct.TYPE_13__* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %187
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %193 = call i32 @l2cu_release_ccb(%struct.TYPE_13__* %192)
  %194 = load i32 (i32, i32)**, i32 (i32, i32)*** %9, align 8
  %195 = load i32 (i32, i32)*, i32 (i32, i32)** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @L2CAP_CONN_NO_LINK, align 4
  %198 = call i32 %195(i32 %196, i32 %197)
  br label %207

199:                                              ; preds = %187
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %203 = load i32, i32* @L2CAP_CHNL_CONNECT_TOUT, align 4
  %204 = call i32 @btu_start_timer(i32* %201, i32 %202, i32 %203)
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %206 = call i32 @l2cu_send_peer_connect_req(%struct.TYPE_13__* %205)
  br label %207

207:                                              ; preds = %199, %191
  br label %208

208:                                              ; preds = %3, %207, %184, %183, %152, %135, %134, %74, %68
  ret void
}

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i32, ...) #1

declare dso_local i32 @l2c_csm_get_event_name(i32) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, ...) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_13__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @l2cu_send_peer_disc_req(%struct.TYPE_13__*) #1

declare dso_local i32 @osi_free(i8*) #1

declare dso_local i32 @l2c_fcr_chk_chan_modes(%struct.TYPE_13__*) #1

declare dso_local i32 @l2cu_send_peer_connect_req(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
