; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_tvservice.c_tvservice_notify_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_tvservice.c_tvservice_notify_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_9__*, i32, %struct.TYPE_8__, i8*, i8*, i32*, i8*, %struct.TYPE_11__, %struct.TYPE_10__, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32 (i32, i32, i32, i32)* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"TV service async thread started\00", align 1
@VC_TV_GET_DISPLAY_STATE = common dso_local global i32 0, align 4
@tvservice_notify_available_event = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@VCHI_FLAGS_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"[%s] %s %d %d\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"[%s] invalidating caches\00", align 1
@SDTV_MODE_OFF = common dso_local global i8* null, align 8
@SDTV_COLOUR_RGB = common dso_local global i32 0, align 4
@SDTV_COLOUR_YPRPB = common dso_local global i32 0, align 4
@SDTV_COLOUR_UNKNOWN = common dso_local global i8* null, align 8
@SDTV_CP_NONE = common dso_local global i32 0, align 4
@TVSERVICE_MAX_CALLBACKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"TV service: No callback handler specified, callback [%s] swallowed\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"TV service async thread exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @tvservice_notify_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tvservice_notify_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %5, align 8
  %15 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @VC_TV_GET_DISPLAY_STATE, align 4
  %17 = call i64 @tvservice_send_command_reply(i32 %16, i32* null, i32 0, %struct.TYPE_12__* %6, i32 4)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %475

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 141
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 143
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 11
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vchi_service_use(i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  br label %39

39:                                               ; preds = %38, %21
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 143
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -144
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %466
  %50 = call i64 @vcos_event_wait(i32* @tvservice_notify_available_event)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @VCOS_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54, %49
  br label %467

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %464, %65
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 11
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 15
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* @VCHI_FLAGS_NONE, align 4
  %78 = call i64 @vchi_msg_dequeue(i32 %71, i32* %74, i32 8, i32* %76, i32 %77)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %66
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %85, 12
  br i1 %86, label %87, label %95

87:                                               ; preds = %81, %66
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %91, 12
  %93 = zext i1 %92 to i32
  %94 = call i32 @vcos_assert(i32 %93)
  br label %466

95:                                               ; preds = %81
  %96 = call i64 (...) @tvservice_lock_obtain()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %466

99:                                               ; preds = %95
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 15
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @VC_VTOH32(i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 15
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @VC_VTOH32(i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 15
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @VC_VTOH32(i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* @VCOS_FUNCTION, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @vc_tv_notification_name(i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %8, align 4
  switch i32 %124, label %404 [
    i32 134, label %125
    i32 141, label %166
    i32 140, label %195
    i32 135, label %222
    i32 136, label %249
    i32 139, label %258
    i32 138, label %267
    i32 137, label %267
    i32 128, label %268
    i32 133, label %286
    i32 130, label %296
    i32 129, label %338
    i32 131, label %380
    i32 132, label %392
  ]

125:                                              ; preds = %99
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 143
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 141
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 11
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @vchi_service_release(i32 %142)
  br label %144

144:                                              ; preds = %137, %130
  br label %145

145:                                              ; preds = %144, %125
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, -144
  store i32 %148, i32* %146, align 4
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, 142
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @VCOS_FUNCTION, align 4
  %153 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 14
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 14
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 13
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 13
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  br label %404

166:                                              ; preds = %99
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 143
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 11
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @vchi_service_release(i32 %178)
  br label %180

180:                                              ; preds = %171, %166
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, -144
  store i32 %183, i32* %181, align 4
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, 141
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to i8*
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 12
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  br label %404

195:                                              ; preds = %99
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 143
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 11
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @vchi_service_use(i32 %205)
  br label %207

207:                                              ; preds = %200, %195
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, -144
  store i32 %210, i32* %208, align 4
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, 140
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 10
  store i8* %216, i8** %218, align 8
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  br label %404

222:                                              ; preds = %99
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, 143
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %222
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 11
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @vchi_service_use(i32 %232)
  br label %234

234:                                              ; preds = %227, %222
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, -144
  store i32 %237, i32* %235, align 4
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, 135
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to i8*
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 10
  store i8* %243, i8** %245, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  br label %404

249:                                              ; preds = %99
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, -140
  store i32 %252, i32* %250, align 4
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, 136
  store i32 %255, i32* %253, align 4
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 1
  store i32 0, i32* %257, align 4
  br label %404

258:                                              ; preds = %99
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, -137
  store i32 %261, i32* %259, align 4
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, 139
  store i32 %264, i32* %262, align 4
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  store i32 1, i32* %266, align 4
  br label %404

267:                                              ; preds = %99, %99
  br label %404

268:                                              ; preds = %99
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = and i32 %270, 131
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  store i32 0, i32* %275, align 4
  br label %276

276:                                              ; preds = %273, %268
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, -136
  store i32 %279, i32* %277, align 4
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = or i32 %281, 131
  store i32 %282, i32* %280, align 4
  %283 = load i8*, i8** @SDTV_MODE_OFF, align 8
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 9
  store i8* %283, i8** %285, align 8
  br label %404

286:                                              ; preds = %99
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, -132
  store i32 %289, i32* %287, align 4
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, 133
  store i32 %292, i32* %290, align 4
  %293 = load i8*, i8** @SDTV_MODE_OFF, align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 9
  store i8* %293, i8** %295, align 8
  br label %404

296:                                              ; preds = %99
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, -134
  store i32 %299, i32* %297, align 4
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, 130
  store i32 %302, i32* %300, align 4
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = inttoptr i64 %304 to i8*
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 9
  store i8* %305, i8** %307, align 8
  %308 = load i32, i32* %10, align 4
  %309 = sext i32 %308 to i64
  %310 = inttoptr i64 %309 to i8*
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  store i8* %310, i8** %313, align 8
  %314 = load i32, i32* %9, align 4
  %315 = load i32, i32* @SDTV_COLOUR_RGB, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %296
  %319 = load i32, i32* @SDTV_COLOUR_RGB, align 4
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 4
  store i32 %319, i32* %321, align 8
  br label %337

322:                                              ; preds = %296
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* @SDTV_COLOUR_YPRPB, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %322
  %328 = load i32, i32* @SDTV_COLOUR_YPRPB, align 4
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 4
  store i32 %328, i32* %330, align 8
  br label %336

331:                                              ; preds = %322
  %332 = load i8*, i8** @SDTV_COLOUR_UNKNOWN, align 8
  %333 = ptrtoint i8* %332 to i32
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 4
  store i32 %333, i32* %335, align 8
  br label %336

336:                                              ; preds = %331, %327
  br label %337

337:                                              ; preds = %336, %318
  br label %404

338:                                              ; preds = %99
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = and i32 %340, -136
  store i32 %341, i32* %339, align 4
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, 129
  store i32 %344, i32* %342, align 4
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = inttoptr i64 %346 to i8*
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 9
  store i8* %347, i8** %349, align 8
  %350 = load i32, i32* %10, align 4
  %351 = sext i32 %350 to i64
  %352 = inttoptr i64 %351 to i8*
  %353 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  store i8* %352, i8** %355, align 8
  %356 = load i32, i32* %9, align 4
  %357 = load i32, i32* @SDTV_COLOUR_RGB, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %338
  %361 = load i32, i32* @SDTV_COLOUR_RGB, align 4
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 4
  store i32 %361, i32* %363, align 8
  br label %379

364:                                              ; preds = %338
  %365 = load i32, i32* %9, align 4
  %366 = load i32, i32* @SDTV_COLOUR_YPRPB, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %364
  %370 = load i32, i32* @SDTV_COLOUR_YPRPB, align 4
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 4
  store i32 %370, i32* %372, align 8
  br label %378

373:                                              ; preds = %364
  %374 = load i8*, i8** @SDTV_COLOUR_UNKNOWN, align 8
  %375 = ptrtoint i8* %374 to i32
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 4
  store i32 %375, i32* %377, align 8
  br label %378

378:                                              ; preds = %373, %369
  br label %379

379:                                              ; preds = %378, %360
  br label %404

380:                                              ; preds = %99
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, -133
  store i32 %383, i32* %381, align 4
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %385, 131
  store i32 %386, i32* %384, align 4
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 1
  store i32 0, i32* %388, align 4
  %389 = load i32, i32* @SDTV_CP_NONE, align 4
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 7
  store i32 %389, i32* %391, align 8
  br label %404

392:                                              ; preds = %99
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, -132
  store i32 %395, i32* %393, align 4
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = or i32 %397, 132
  store i32 %398, i32* %396, align 4
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 1
  store i32 1, i32* %400, align 4
  %401 = load i32, i32* %9, align 4
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 7
  store i32 %401, i32* %403, align 8
  br label %404

404:                                              ; preds = %99, %392, %380, %379, %337, %286, %276, %267, %258, %249, %234, %207, %180, %145
  %405 = call i32 (...) @tvservice_lock_release()
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %406

406:                                              ; preds = %444, %404
  %407 = load i32, i32* %11, align 4
  %408 = load i32, i32* @TVSERVICE_MAX_CALLBACKS, align 4
  %409 = icmp slt i32 %407, %408
  br i1 %409, label %410, label %447

410:                                              ; preds = %406
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 6
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %412, align 8
  %414 = load i32, i32* %11, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 1
  %418 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %417, align 8
  %419 = icmp ne i32 (i32, i32, i32, i32)* %418, null
  br i1 %419, label %420, label %443

420:                                              ; preds = %410
  %421 = load i32, i32* %12, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %12, align 4
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 6
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %424, align 8
  %426 = load i32, i32* %11, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 1
  %430 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %429, align 8
  %431 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 6
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** %432, align 8
  %434 = load i32, i32* %11, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* %8, align 4
  %440 = load i32, i32* %9, align 4
  %441 = load i32, i32* %10, align 4
  %442 = call i32 %430(i32 %438, i32 %439, i32 %440, i32 %441)
  br label %443

443:                                              ; preds = %420, %410
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %11, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %11, align 4
  br label %406

447:                                              ; preds = %406
  %448 = load i32, i32* %12, align 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %447
  %451 = load i32, i32* %8, align 4
  %452 = call i32 @vc_tv_notification_name(i32 %451)
  %453 = call i32 @vcos_log_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %452)
  br label %454

454:                                              ; preds = %450, %447
  br label %455

455:                                              ; preds = %454
  %456 = load i64, i64* %4, align 8
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %458, label %464

458:                                              ; preds = %455
  %459 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = sext i32 %461 to i64
  %463 = icmp uge i64 %462, 12
  br label %464

464:                                              ; preds = %458, %455
  %465 = phi i1 [ false, %455 ], [ %463, %458 ]
  br i1 %465, label %66, label %466

466:                                              ; preds = %464, %98, %87
  br label %49

467:                                              ; preds = %64
  %468 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %468, i32 0, i32 5
  %470 = load i64, i64* %469, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %474

472:                                              ; preds = %467
  %473 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %474

474:                                              ; preds = %472, %467
  store i8* null, i8** %2, align 8
  br label %475

475:                                              ; preds = %474, %20
  %476 = load i8*, i8** %2, align 8
  ret i8* %476
}

declare dso_local i32 @vcos_log_trace(i8*, ...) #1

declare dso_local i64 @tvservice_send_command_reply(i32, i32*, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @vchi_service_use(i32) #1

declare dso_local i64 @vcos_event_wait(i32*) #1

declare dso_local i64 @vchi_msg_dequeue(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @tvservice_lock_obtain(...) #1

declare dso_local i32 @VC_VTOH32(i32) #1

declare dso_local i32 @vc_tv_notification_name(i32) #1

declare dso_local i32 @vchi_service_release(i32) #1

declare dso_local i32 @tvservice_lock_release(...) #1

declare dso_local i32 @vcos_log_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
