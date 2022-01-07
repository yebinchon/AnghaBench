; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_do_ping_test.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_do_ping_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_params = type { i32, i32, i64, i64, i8*, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@g_params = common dso_local global %struct.test_params zeroinitializer, align 8
@MSG_CONFIG = common dso_local global i8* null, align 8
@g_server_reply = common dso_local global i32 0, align 4
@VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA = common dso_local global i32 0, align 4
@bulk_tx_received = common dso_local global i32 0, align 4
@MSG_ASYNC = common dso_local global i8* null, align 8
@MSG_ONEWAY = common dso_local global i8* null, align 8
@MSG_SYNC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"ping (size %d, %d async, %d oneway) -> %fus\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"bulk (size %d, async) -> %fus\0A\00", align 1
@VCHIQ_BULK_MODE_NOCALLBACK = common dso_local global i32 0, align 4
@VCHIQ_BULK_MODE_BLOCKING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"bulk (size %d, %d async) -> %fus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @do_ping_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ping_test(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.test_params*, align 8
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 40
  %22 = trunc i64 %21 to i32
  %23 = call i8* @malloc(i32 %22)
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = bitcast i8* %24 to %struct.test_params*
  store %struct.test_params* %25, %struct.test_params** %14, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.test_params*, %struct.test_params** %14, align 8
  %29 = bitcast %struct.test_params* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.test_params* @g_params to i8*), i64 40, i1 false)
  %30 = load i8*, i8** @MSG_CONFIG, align 8
  %31 = load %struct.test_params*, %struct.test_params** %14, align 8
  %32 = getelementptr inbounds %struct.test_params, %struct.test_params* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.test_params*, %struct.test_params** %14, align 8
  %34 = getelementptr inbounds %struct.test_params, %struct.test_params* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 40, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @vchiq_queue_message(i32 %36, %struct.TYPE_3__* %15, i32 1)
  %38 = call i32 @vcos_event_wait(i32* @g_server_reply)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA, align 4
  %41 = load %struct.test_params*, %struct.test_params** %14, align 8
  %42 = getelementptr inbounds %struct.test_params, %struct.test_params* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vchiq_set_service_option(i32 %39, i32 %40, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %5
  br label %50

48:                                               ; preds = %5
  %49 = load i32, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 4, %47 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  store i32 -1, i32* @bulk_tx_received, align 4
  %53 = call i64 (...) @vcos_getmicrosecs()
  store i64 %53, i64* %11, align 8
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %96, %50
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %99

58:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @vcos_max(i32 %61, i32 %62)
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %59
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i8*, i8** @MSG_ASYNC, align 8
  %71 = load %struct.test_params*, %struct.test_params** %14, align 8
  %72 = getelementptr inbounds %struct.test_params, %struct.test_params* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @vchiq_queue_message(i32 %73, %struct.TYPE_3__* %15, i32 1)
  br label %75

75:                                               ; preds = %69, %65
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i8*, i8** @MSG_ONEWAY, align 8
  %81 = load %struct.test_params*, %struct.test_params** %14, align 8
  %82 = getelementptr inbounds %struct.test_params, %struct.test_params* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @vchiq_queue_message(i32 %83, %struct.TYPE_3__* %15, i32 1)
  br label %85

85:                                               ; preds = %79, %75
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  br label %59

89:                                               ; preds = %59
  %90 = load i8*, i8** @MSG_SYNC, align 8
  %91 = load %struct.test_params*, %struct.test_params** %14, align 8
  %92 = getelementptr inbounds %struct.test_params, %struct.test_params* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @vchiq_queue_message(i32 %93, %struct.TYPE_3__* %15, i32 1)
  %95 = call i32 @vcos_event_wait(i32* @g_server_reply)
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %54

99:                                               ; preds = %54
  %100 = call i64 (...) @vcos_getmicrosecs()
  store i64 %100, i64* %12, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %11, align 8
  %106 = sub nsw i64 %104, %105
  %107 = sitofp i64 %106 to float
  %108 = load i32, i32* %10, align 4
  %109 = sitofp i32 %108 to float
  %110 = fdiv float %107, %109
  %111 = fpext float %110 to double
  %112 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102, i32 %103, double %111)
  %113 = call i32 @vcos_sleep(i32 20)
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %175

116:                                              ; preds = %99
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %175

119:                                              ; preds = %116
  %120 = load %struct.test_params*, %struct.test_params** %14, align 8
  %121 = bitcast %struct.test_params* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 bitcast (%struct.test_params* @g_params to i8*), i64 40, i1 false)
  %122 = load i8*, i8** @MSG_CONFIG, align 8
  %123 = load %struct.test_params*, %struct.test_params** %14, align 8
  %124 = getelementptr inbounds %struct.test_params, %struct.test_params* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* %7, align 4
  br label %130

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 8, %129 ]
  %132 = load %struct.test_params*, %struct.test_params** %14, align 8
  %133 = getelementptr inbounds %struct.test_params, %struct.test_params* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.test_params*, %struct.test_params** %14, align 8
  %136 = getelementptr inbounds %struct.test_params, %struct.test_params* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.test_params*, %struct.test_params** %14, align 8
  %138 = getelementptr inbounds %struct.test_params, %struct.test_params* %137, i32 0, i32 3
  store i64 0, i64* %138, align 8
  %139 = load %struct.test_params*, %struct.test_params** %14, align 8
  %140 = getelementptr inbounds %struct.test_params, %struct.test_params* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 40, i32* %141, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @vchiq_queue_message(i32 %142, %struct.TYPE_3__* %15, i32 1)
  %144 = call i32 @vcos_event_wait(i32* @g_server_reply)
  %145 = call i32 @vcos_sleep(i32 30)
  %146 = call i64 (...) @vcos_getmicrosecs()
  store i64 %146, i64* %11, align 8
  store i32 0, i32* %16, align 4
  br label %147

147:                                              ; preds = %159, %130
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i32, i32* %6, align 4
  %153 = load i8*, i8** %13, align 8
  %154 = load %struct.test_params*, %struct.test_params** %14, align 8
  %155 = getelementptr inbounds %struct.test_params, %struct.test_params* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @vchiq_queue_bulk_transmit(i32 %152, i8* %153, i32 %156, i32 0)
  %158 = call i32 @vcos_event_wait(i32* @g_server_reply)
  br label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %147

162:                                              ; preds = %147
  %163 = call i64 (...) @vcos_getmicrosecs()
  store i64 %163, i64* %12, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* %11, align 8
  %167 = sub nsw i64 %165, %166
  %168 = sitofp i64 %167 to float
  %169 = load i32, i32* %10, align 4
  %170 = sitofp i32 %169 to float
  %171 = fdiv float %168, %170
  %172 = fptosi float %171 to i32
  %173 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %164, i32 %172)
  %174 = call i32 @vcos_sleep(i32 40)
  br label %175

175:                                              ; preds = %162, %116, %99
  %176 = load i32, i32* %9, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %254

178:                                              ; preds = %175
  %179 = load %struct.test_params*, %struct.test_params** %14, align 8
  %180 = bitcast %struct.test_params* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 bitcast (%struct.test_params* @g_params to i8*), i64 40, i1 false)
  %181 = load i8*, i8** @MSG_CONFIG, align 8
  %182 = load %struct.test_params*, %struct.test_params** %14, align 8
  %183 = getelementptr inbounds %struct.test_params, %struct.test_params* %182, i32 0, i32 4
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* %7, align 4
  br label %189

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %186
  %190 = phi i32 [ %187, %186 ], [ 8, %188 ]
  %191 = load %struct.test_params*, %struct.test_params** %14, align 8
  %192 = getelementptr inbounds %struct.test_params, %struct.test_params* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  %196 = mul nsw i32 %193, %195
  %197 = load %struct.test_params*, %struct.test_params** %14, align 8
  %198 = getelementptr inbounds %struct.test_params, %struct.test_params* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.test_params*, %struct.test_params** %14, align 8
  %200 = getelementptr inbounds %struct.test_params, %struct.test_params* %199, i32 0, i32 3
  store i64 0, i64* %200, align 8
  %201 = load %struct.test_params*, %struct.test_params** %14, align 8
  %202 = getelementptr inbounds %struct.test_params, %struct.test_params* %201, i32 0, i32 2
  store i64 0, i64* %202, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 40, i32* %203, align 8
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @vchiq_queue_message(i32 %204, %struct.TYPE_3__* %15, i32 1)
  %206 = call i32 @vcos_event_wait(i32* @g_server_reply)
  %207 = call i32 @vcos_sleep(i32 50)
  %208 = call i64 (...) @vcos_getmicrosecs()
  store i64 %208, i64* %11, align 8
  store i32 0, i32* %16, align 4
  br label %209

209:                                              ; preds = %237, %189
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %240

213:                                              ; preds = %209
  store i32 0, i32* %18, align 4
  br label %214

214:                                              ; preds = %226, %213
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %8, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %214
  %219 = load i32, i32* %6, align 4
  %220 = load i8*, i8** %13, align 8
  %221 = load %struct.test_params*, %struct.test_params** %14, align 8
  %222 = getelementptr inbounds %struct.test_params, %struct.test_params* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @VCHIQ_BULK_MODE_NOCALLBACK, align 4
  %225 = call i32 @vchiq_bulk_transmit(i32 %219, i8* %220, i32 %223, i32 0, i32 %224)
  br label %226

226:                                              ; preds = %218
  %227 = load i32, i32* %18, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %18, align 4
  br label %214

229:                                              ; preds = %214
  %230 = load i32, i32* %6, align 4
  %231 = load i8*, i8** %13, align 8
  %232 = load %struct.test_params*, %struct.test_params** %14, align 8
  %233 = getelementptr inbounds %struct.test_params, %struct.test_params* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @VCHIQ_BULK_MODE_BLOCKING, align 4
  %236 = call i32 @vchiq_bulk_transmit(i32 %230, i8* %231, i32 %234, i32 0, i32 %235)
  br label %237

237:                                              ; preds = %229
  %238 = load i32, i32* %16, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %16, align 4
  br label %209

240:                                              ; preds = %209
  %241 = call i64 (...) @vcos_getmicrosecs()
  store i64 %241, i64* %12, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %8, align 4
  %244 = load i64, i64* %12, align 8
  %245 = load i64, i64* %11, align 8
  %246 = sub nsw i64 %244, %245
  %247 = sitofp i64 %246 to float
  %248 = load i32, i32* %10, align 4
  %249 = sitofp i32 %248 to float
  %250 = fdiv float %247, %249
  %251 = fpext float %250 to double
  %252 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %242, i32 %243, double %251)
  %253 = call i32 @vcos_sleep(i32 60)
  br label %254

254:                                              ; preds = %240, %175
  %255 = load i8*, i8** %13, align 8
  %256 = call i32 @free(i8* %255)
  store i32 0, i32* @bulk_tx_received, align 4
  ret void
}

declare dso_local i8* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vchiq_queue_message(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @vcos_event_wait(i32*) #1

declare dso_local i32 @vchiq_set_service_option(i32, i32, i32) #1

declare dso_local i64 @vcos_getmicrosecs(...) #1

declare dso_local i32 @vcos_max(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @vcos_sleep(i32) #1

declare dso_local i32 @vchiq_queue_bulk_transmit(i32, i8*, i32, i32) #1

declare dso_local i32 @vchiq_bulk_transmit(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
