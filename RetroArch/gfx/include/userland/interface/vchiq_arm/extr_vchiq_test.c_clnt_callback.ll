; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_clnt_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_clnt_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i64, i8* }

@g_mutex = common dso_local global i32 0, align 4
@VCHIQ_MESSAGE_AVAILABLE = common dso_local global i64 0, align 8
@MSG_ECHO = common dso_local global i32 0, align 4
@g_params = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@bulk_tx_data = common dso_local global i8** null, align 8
@ctrl_received = common dso_local global i64 0, align 8
@NUM_BULK_BUFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"corrupt data\00", align 1
@g_server_error = common dso_local global i8* null, align 8
@g_shutdown = common dso_local global i32 0, align 4
@g_server_reply = common dso_local global i32 0, align 4
@VCHIQ_BULK_TRANSMIT_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"  BULK_TRANSMIT_DONE(%d)\00", align 1
@bulk_tx_received = common dso_local global i32 0, align 4
@bulk_tx_sent = common dso_local global i64 0, align 8
@VCHIQ_BULK_RECEIVE_DONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"  BULK_RECEIVE_DONE(%d): data '%s'\00", align 1
@bulk_rx_data = common dso_local global i8** null, align 8
@bulk_rx_received = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"* Data corruption - %d: %x, %x, %x\00", align 1
@VCOS_BKPT = common dso_local global i32 0, align 4
@bulk_rx_sent = common dso_local global i64 0, align 8
@VCHIQ_BULK_TRANSMIT_ABORTED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"  BULK_TRANSMIT_ABORTED(%d)\00", align 1
@VCHIQ_BULK_RECEIVE_ABORTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"  BULK_RECEIVE_ABORTED(%d)\00", align 1
@VCHIQ_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_5__*, i32, i8*)* @clnt_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clnt_callback(i64 %0, %struct.TYPE_5__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = call i32 @vcos_mutex_lock(i32* @g_mutex)
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @VCHIQ_MESSAGE_AVAILABLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ule i64 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = call i32 @vchiq_release_message(i32 %26, %struct.TYPE_5__* %27)
  br label %82

29:                                               ; preds = %19
  %30 = load i64, i64* %10, align 8
  %31 = icmp uge i64 %30, 4
  br i1 %31, label %32, label %73

32:                                               ; preds = %29
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @memcpy(i32* %9, i8* %35, i32 4)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MSG_ECHO, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %32
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 3), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** @bulk_tx_data, align 8
  %48 = load i64, i64* @ctrl_received, align 8
  %49 = load i64, i64* @NUM_BULK_BUFS, align 8
  %50 = urem i64 %48, %49
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 2), align 8
  %54 = call i64 @mem_check(i8* %46, i8* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** @g_server_error, align 8
  br label %60

57:                                               ; preds = %43, %40
  %58 = load i64, i64* @ctrl_received, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* @ctrl_received, align 8
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i8*, i8** @g_server_error, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* @ctrl_received, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 0), align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %60
  %68 = call i32 @vcos_event_signal(i32* @g_shutdown)
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = call i32 @vchiq_release_message(i32 %70, %struct.TYPE_5__* %71)
  br label %81

73:                                               ; preds = %32, %29
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** @g_server_error, align 8
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %69
  br label %82

82:                                               ; preds = %81, %25
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** @g_server_error, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %85, %82
  %89 = call i32 @vcos_event_signal(i32* @g_server_reply)
  br label %90

90:                                               ; preds = %88, %85
  br label %251

91:                                               ; preds = %4
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @VCHIQ_BULK_TRANSMIT_DONE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %132

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @bulk_tx_received, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 @vcos_event_signal(i32* @g_server_reply)
  br label %131

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @bulk_tx_received, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @vcos_assert(i32 %108)
  %110 = load i32, i32* @bulk_tx_received, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @bulk_tx_received, align 4
  %112 = load i64, i64* @bulk_tx_sent, align 8
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 0), align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %104
  %116 = load i32, i32* %7, align 4
  %117 = load i8**, i8*** @bulk_tx_data, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @NUM_BULK_BUFS, align 8
  %121 = urem i64 %119, %120
  %122 = getelementptr inbounds i8*, i8** %117, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 2), align 8
  %125 = load i64, i64* @bulk_tx_sent, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @vchiq_queue_bulk_transmit(i32 %116, i8* %123, i32 %124, i8* %126)
  %128 = load i64, i64* @bulk_tx_sent, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* @bulk_tx_sent, align 8
  br label %130

130:                                              ; preds = %115, %104
  br label %131

131:                                              ; preds = %130, %102
  br label %250

132:                                              ; preds = %91
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* @VCHIQ_BULK_RECEIVE_DONE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %229

136:                                              ; preds = %132
  %137 = load i8*, i8** %8, align 8
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i8**, i8*** @bulk_rx_data, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @NUM_BULK_BUFS, align 8
  %144 = urem i64 %142, %143
  %145 = getelementptr inbounds i8*, i8** %140, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %139, i8* %146)
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @bulk_rx_received, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @vcos_assert(i32 %151)
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 3), align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %194

155:                                              ; preds = %136
  %156 = load i8**, i8*** @bulk_tx_data, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* @NUM_BULK_BUFS, align 8
  %160 = urem i64 %158, %159
  %161 = getelementptr inbounds i8*, i8** %156, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load i8**, i8*** @bulk_rx_data, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* @NUM_BULK_BUFS, align 8
  %167 = urem i64 %165, %166
  %168 = getelementptr inbounds i8*, i8** %163, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 2), align 8
  %171 = call i64 @mem_check(i8* %162, i8* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %155
  %174 = load i32, i32* %12, align 4
  %175 = load i8**, i8*** @bulk_tx_data, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* @NUM_BULK_BUFS, align 8
  %179 = urem i64 %177, %178
  %180 = getelementptr inbounds i8*, i8** %175, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = ptrtoint i8* %181 to i32
  %183 = load i8**, i8*** @bulk_rx_data, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* @NUM_BULK_BUFS, align 8
  %187 = urem i64 %185, %186
  %188 = getelementptr inbounds i8*, i8** %183, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 2), align 8
  %192 = call i32 @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %174, i32 %182, i32 %190, i32 %191)
  %193 = load i32, i32* @VCOS_BKPT, align 4
  br label %194

194:                                              ; preds = %173, %155, %136
  %195 = load i32, i32* @bulk_rx_received, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* @bulk_rx_received, align 4
  %197 = load i64, i64* @bulk_rx_sent, align 8
  %198 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 0), align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %228

200:                                              ; preds = %194
  %201 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 3), align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %200
  %204 = load i8**, i8*** @bulk_rx_data, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = load i64, i64* @NUM_BULK_BUFS, align 8
  %208 = urem i64 %206, %207
  %209 = getelementptr inbounds i8*, i8** %204, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 2), align 8
  %212 = call i32 @memset(i8* %210, i32 255, i32 %211)
  br label %213

213:                                              ; preds = %203, %200
  %214 = load i32, i32* %7, align 4
  %215 = load i8**, i8*** @bulk_rx_data, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = load i64, i64* @NUM_BULK_BUFS, align 8
  %219 = urem i64 %217, %218
  %220 = getelementptr inbounds i8*, i8** %215, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 2), align 8
  %223 = load i64, i64* @bulk_rx_sent, align 8
  %224 = inttoptr i64 %223 to i8*
  %225 = call i32 @vchiq_queue_bulk_receive(i32 %214, i8* %221, i32 %222, i8* %224)
  %226 = load i64, i64* @bulk_rx_sent, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* @bulk_rx_sent, align 8
  br label %228

228:                                              ; preds = %213, %194
  br label %249

229:                                              ; preds = %132
  %230 = load i64, i64* %5, align 8
  %231 = load i64, i64* @VCHIQ_BULK_TRANSMIT_ABORTED, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = load i8*, i8** %8, align 8
  %235 = ptrtoint i8* %234 to i32
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @vcos_log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %236)
  br label %248

238:                                              ; preds = %229
  %239 = load i64, i64* %5, align 8
  %240 = load i64, i64* @VCHIQ_BULK_RECEIVE_ABORTED, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load i8*, i8** %8, align 8
  %244 = ptrtoint i8* %243 to i32
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* %14, align 4
  %246 = call i32 @vcos_log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %245)
  br label %247

247:                                              ; preds = %242, %238
  br label %248

248:                                              ; preds = %247, %233
  br label %249

249:                                              ; preds = %248, %228
  br label %250

250:                                              ; preds = %249, %131
  br label %251

251:                                              ; preds = %250, %90
  %252 = load i32, i32* @bulk_tx_received, align 4
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 0), align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %251
  %257 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 1), align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* @bulk_rx_received, align 4
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_params, i32 0, i32 0), align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %259, %256
  %265 = call i32 @vcos_event_signal(i32* @g_shutdown)
  br label %266

266:                                              ; preds = %264, %259, %251
  %267 = call i32 @vcos_mutex_unlock(i32* @g_mutex)
  %268 = load i32, i32* @VCHIQ_SUCCESS, align 4
  ret i32 %268
}

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vchiq_release_message(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @mem_check(i8*, i8*, i32) #1

declare dso_local i32 @vcos_event_signal(i32*) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, ...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vchiq_queue_bulk_transmit(i32, i8*, i32, i8*) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @vchiq_queue_bulk_receive(i32, i8*, i32, i8*) #1

declare dso_local i32 @vcos_log_info(i8*, i32) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
