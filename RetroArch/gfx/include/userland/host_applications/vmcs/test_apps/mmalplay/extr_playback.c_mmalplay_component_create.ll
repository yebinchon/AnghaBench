; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_component_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_component_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_34__ = type { i64, %struct.TYPE_31__, i32, i64, %struct.TYPE_35__* }
%struct.TYPE_31__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_35__ = type { i8*, %struct.TYPE_33__*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p, %s\00", align 1
@MMAL_ENOSPC = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_VIDEO_DECODER = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_IMAGE_DECODER = common dso_local global i8* null, align 8
@MMAL_COMPONENT_DEFAULT_SPLITTER = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_VIDEO_CONVERTER = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_SCHEDULER = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_AUDIO_DECODER = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_AUDIO_RENDERER = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_CONTAINER_READER = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"couldn't create %s\00", align 1
@MMAL_COMPONENT_DEFAULT_CONTAINER_WRITER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s couldn't be enabled\00", align 1
@mmalplay_bh_control_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"control port couldn't be enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_33__* (%struct.TYPE_34__*, i8*, i32*)* @mmalplay_component_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_33__* @mmalplay_component_create(%struct.TYPE_34__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %13 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %12, i64 %15
  store %struct.TYPE_35__* %16, %struct.TYPE_35__** %8, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %9, align 8
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_34__* %18, i8* %19)
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %27 = call i64 @MMAL_COUNTOF(%struct.TYPE_35__* %26)
  %28 = icmp uge i64 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @MMAL_ENOSPC, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %4, align 8
  br label %413

32:                                               ; preds = %3
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_DECODER, align 4
  %40 = call i32 @strcmp(i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** @MMAL_COMPONENT_DEFAULT_IMAGE_DECODER, align 8
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %42, %37, %32
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_DECODER, align 4
  %56 = call i32 @strcmp(i8* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %9, align 8
  br label %188

69:                                               ; preds = %58, %53
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @MMAL_COMPONENT_DEFAULT_SPLITTER, align 4
  %72 = call i32 @strcmp(i8* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %9, align 8
  br label %187

85:                                               ; preds = %74, %69
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, align 4
  %88 = call i32 @strcmp(i8* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %9, align 8
  br label %186

101:                                              ; preds = %90, %85
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_CONVERTER, align 4
  %104 = call i32 @strcmp(i8* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %9, align 8
  br label %185

117:                                              ; preds = %106, %101
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* @MMAL_COMPONENT_DEFAULT_SCHEDULER, align 4
  %120 = call i32 @strcmp(i8* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %117
  %123 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 4
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %9, align 8
  br label %184

133:                                              ; preds = %122, %117
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* @MMAL_COMPONENT_DEFAULT_AUDIO_DECODER, align 4
  %136 = call i32 @strcmp(i8* %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 5
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %9, align 8
  br label %183

149:                                              ; preds = %138, %133
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* @MMAL_COMPONENT_DEFAULT_AUDIO_RENDERER, align 4
  %152 = call i32 @strcmp(i8* %150, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 6
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 6
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %9, align 8
  br label %182

165:                                              ; preds = %154, %149
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CONTAINER_READER, align 4
  %168 = call i32 @strcmp(i8* %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %165
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 7
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 7
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %9, align 8
  br label %181

181:                                              ; preds = %176, %170, %165
  br label %182

182:                                              ; preds = %181, %160
  br label %183

183:                                              ; preds = %182, %144
  br label %184

184:                                              ; preds = %183, %128
  br label %185

185:                                              ; preds = %184, %112
  br label %186

186:                                              ; preds = %185, %96
  br label %187

187:                                              ; preds = %186, %80
  br label %188

188:                                              ; preds = %187, %64
  %189 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %189, i32 0, i32 1
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %190, align 8
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = call i32 @vcos_safe_strcpy(i32 %193, i8* %194, i32 4, i32 0)
  %196 = call i8* (...) @vcos_getmicrosecs()
  %197 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %197, i32 0, i32 0
  store i8* %196, i8** %198, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %200, i32 0, i32 1
  %202 = call i32 @mmal_component_create(i8* %199, %struct.TYPE_33__** %201)
  %203 = load i32*, i32** %7, align 8
  store i32 %202, i32* %203, align 4
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @MMAL_SUCCESS, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %188
  %209 = load i8*, i8** %9, align 8
  %210 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %209)
  br label %392

211:                                              ; preds = %188
  %212 = load i8*, i8** %6, align 8
  %213 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CONTAINER_READER, align 4
  %214 = call i32 @strcmp(i8* %212, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %226, label %216

216:                                              ; preds = %211
  %217 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %219, align 8
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @mmalplay_setup_container_reader(%struct.TYPE_34__* %217, %struct.TYPE_33__* %220, i32 %223)
  %225 = load i32*, i32** %7, align 8
  store i32 %224, i32* %225, align 4
  br label %334

226:                                              ; preds = %211
  %227 = load i8*, i8** %6, align 8
  %228 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CONTAINER_WRITER, align 4
  %229 = call i32 @strcmp(i8* %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %242, label %231

231:                                              ; preds = %226
  %232 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %233 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %234, align 8
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @mmalplay_setup_container_writer(%struct.TYPE_34__* %232, %struct.TYPE_33__* %235, i32 %239)
  %241 = load i32*, i32** %7, align 8
  store i32 %240, i32* %241, align 4
  br label %333

242:                                              ; preds = %226
  %243 = load i8*, i8** %6, align 8
  %244 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_DECODER, align 4
  %245 = call i32 @strcmp(i8* %243, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %242
  %248 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %249 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %250, align 8
  %252 = call i32 @mmalplay_setup_video_decoder(%struct.TYPE_34__* %248, %struct.TYPE_33__* %251)
  %253 = load i32*, i32** %7, align 8
  store i32 %252, i32* %253, align 4
  br label %332

254:                                              ; preds = %242
  %255 = load i8*, i8** %6, align 8
  %256 = load i32, i32* @MMAL_COMPONENT_DEFAULT_SPLITTER, align 4
  %257 = call i32 @strcmp(i8* %255, i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %254
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %261 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %262, align 8
  %264 = call i32 @mmalplay_setup_splitter(%struct.TYPE_34__* %260, %struct.TYPE_33__* %263)
  %265 = load i32*, i32** %7, align 8
  store i32 %264, i32* %265, align 4
  br label %331

266:                                              ; preds = %254
  %267 = load i8*, i8** %6, align 8
  %268 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_CONVERTER, align 4
  %269 = call i32 @strcmp(i8* %267, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %278, label %271

271:                                              ; preds = %266
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %273 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_33__*, %struct.TYPE_33__** %274, align 8
  %276 = call i32 @mmalplay_setup_video_converter(%struct.TYPE_34__* %272, %struct.TYPE_33__* %275)
  %277 = load i32*, i32** %7, align 8
  store i32 %276, i32* %277, align 4
  br label %330

278:                                              ; preds = %266
  %279 = load i8*, i8** %6, align 8
  %280 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, align 4
  %281 = call i32 @strcmp(i8* %279, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %290, label %283

283:                                              ; preds = %278
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_33__*, %struct.TYPE_33__** %286, align 8
  %288 = call i32 @mmalplay_setup_video_render(%struct.TYPE_34__* %284, %struct.TYPE_33__* %287)
  %289 = load i32*, i32** %7, align 8
  store i32 %288, i32* %289, align 4
  br label %329

290:                                              ; preds = %278
  %291 = load i8*, i8** %6, align 8
  %292 = load i32, i32* @MMAL_COMPONENT_DEFAULT_SCHEDULER, align 4
  %293 = call i32 @strcmp(i8* %291, i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %302, label %295

295:                                              ; preds = %290
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %297 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_33__*, %struct.TYPE_33__** %298, align 8
  %300 = call i32 @mmalplay_setup_video_scheduler(%struct.TYPE_34__* %296, %struct.TYPE_33__* %299)
  %301 = load i32*, i32** %7, align 8
  store i32 %300, i32* %301, align 4
  br label %328

302:                                              ; preds = %290
  %303 = load i8*, i8** %6, align 8
  %304 = load i32, i32* @MMAL_COMPONENT_DEFAULT_AUDIO_DECODER, align 4
  %305 = call i32 @strcmp(i8* %303, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %302
  %308 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %309 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_33__*, %struct.TYPE_33__** %310, align 8
  %312 = call i32 @mmalplay_setup_audio_decoder(%struct.TYPE_34__* %308, %struct.TYPE_33__* %311)
  %313 = load i32*, i32** %7, align 8
  store i32 %312, i32* %313, align 4
  br label %327

314:                                              ; preds = %302
  %315 = load i8*, i8** %6, align 8
  %316 = load i32, i32* @MMAL_COMPONENT_DEFAULT_AUDIO_RENDERER, align 4
  %317 = call i32 @strcmp(i8* %315, i32 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %314
  %320 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %321 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_33__*, %struct.TYPE_33__** %322, align 8
  %324 = call i32 @mmalplay_setup_audio_render(%struct.TYPE_34__* %320, %struct.TYPE_33__* %323)
  %325 = load i32*, i32** %7, align 8
  store i32 %324, i32* %325, align 4
  br label %326

326:                                              ; preds = %319, %314
  br label %327

327:                                              ; preds = %326, %307
  br label %328

328:                                              ; preds = %327, %295
  br label %329

329:                                              ; preds = %328, %283
  br label %330

330:                                              ; preds = %329, %271
  br label %331

331:                                              ; preds = %330, %259
  br label %332

332:                                              ; preds = %331, %247
  br label %333

333:                                              ; preds = %332, %231
  br label %334

334:                                              ; preds = %333, %216
  %335 = load i32*, i32** %7, align 8
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @MMAL_SUCCESS, align 4
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  br label %392

340:                                              ; preds = %334
  %341 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %342, align 8
  %344 = call i32 @mmal_component_enable(%struct.TYPE_33__* %343)
  %345 = load i32*, i32** %7, align 8
  store i32 %344, i32* %345, align 4
  %346 = load i32*, i32** %7, align 8
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %340
  %350 = load i8*, i8** %9, align 8
  %351 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %350)
  br label %392

352:                                              ; preds = %340
  %353 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %354 = bitcast %struct.TYPE_34__* %353 to i8*
  %355 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_33__*, %struct.TYPE_33__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_32__*, %struct.TYPE_32__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %359, i32 0, i32 0
  store i8* %354, i8** %360, align 8
  %361 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_33__*, %struct.TYPE_33__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_32__*, %struct.TYPE_32__** %364, align 8
  %366 = load i32, i32* @mmalplay_bh_control_cb, align 4
  %367 = call i32 @mmal_port_enable(%struct.TYPE_32__* %365, i32 %366)
  %368 = load i32*, i32** %7, align 8
  store i32 %367, i32* %368, align 4
  %369 = load i32*, i32** %7, align 8
  %370 = load i32, i32* %369, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %352
  %373 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %392

374:                                              ; preds = %352
  %375 = call i8* (...) @vcos_getmicrosecs()
  %376 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = ptrtoint i8* %375 to i64
  %380 = ptrtoint i8* %378 to i64
  %381 = sub i64 %379, %380
  %382 = inttoptr i64 %381 to i8*
  %383 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %383, i32 0, i32 0
  store i8* %382, i8** %384, align 8
  %385 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = add i64 %387, 1
  store i64 %388, i64* %386, align 8
  %389 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %390 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_33__*, %struct.TYPE_33__** %390, align 8
  store %struct.TYPE_33__* %391, %struct.TYPE_33__** %4, align 8
  br label %413

392:                                              ; preds = %372, %349, %339, %208
  %393 = call i8* (...) @vcos_getmicrosecs()
  %394 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %394, i32 0, i32 0
  %396 = load i8*, i8** %395, align 8
  %397 = ptrtoint i8* %393 to i64
  %398 = ptrtoint i8* %396 to i64
  %399 = sub i64 %397, %398
  %400 = inttoptr i64 %399 to i8*
  %401 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %401, i32 0, i32 0
  store i8* %400, i8** %402, align 8
  %403 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %403, i32 0, i32 1
  %405 = load %struct.TYPE_33__*, %struct.TYPE_33__** %404, align 8
  %406 = icmp ne %struct.TYPE_33__* %405, null
  br i1 %406, label %407, label %412

407:                                              ; preds = %392
  %408 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %408, i32 0, i32 1
  %410 = load %struct.TYPE_33__*, %struct.TYPE_33__** %409, align 8
  %411 = call i32 @mmal_component_destroy(%struct.TYPE_33__* %410)
  br label %412

412:                                              ; preds = %407, %392
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %4, align 8
  br label %413

413:                                              ; preds = %412, %374, %29
  %414 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  ret %struct.TYPE_33__* %414
}

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_34__*, i8*) #1

declare dso_local i64 @MMAL_COUNTOF(%struct.TYPE_35__*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @vcos_safe_strcpy(i32, i8*, i32, i32) #1

declare dso_local i8* @vcos_getmicrosecs(...) #1

declare dso_local i32 @mmal_component_create(i8*, %struct.TYPE_33__**) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i32 @mmalplay_setup_container_reader(%struct.TYPE_34__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @mmalplay_setup_container_writer(%struct.TYPE_34__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @mmalplay_setup_video_decoder(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @mmalplay_setup_splitter(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @mmalplay_setup_video_converter(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @mmalplay_setup_video_render(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @mmalplay_setup_video_scheduler(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @mmalplay_setup_audio_decoder(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @mmalplay_setup_audio_render(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @mmal_component_enable(%struct.TYPE_33__*) #1

declare dso_local i32 @mmal_port_enable(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
