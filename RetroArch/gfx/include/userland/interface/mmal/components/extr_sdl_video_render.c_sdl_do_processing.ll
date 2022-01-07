; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_sdl_video_render.c_sdl_do_processing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_sdl_video_render.c_sdl_do_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_32__*, %struct.TYPE_41__** }
%struct.TYPE_32__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, %struct.TYPE_33__*, %struct.TYPE_39__, i32 }
%struct.TYPE_33__ = type { i32*, i32** }
%struct.TYPE_39__ = type { i32, i32, i64, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_31__*, i32, %struct.TYPE_34__* }
%struct.TYPE_31__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_34__ = type { i64 (%struct.TYPE_41__*)* }
%struct.TYPE_30__ = type { i32, i64, i64, %struct.TYPE_36__*, i32*, i64 }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32*, i32* }
%struct.TYPE_40__ = type { i32, i32, i64, i32 }
%struct.TYPE_27__ = type { i32 }

@MMAL_BUFFER_HEADER_FLAG_EOS = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"format not set on port %p\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to send an error event buffer\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"discarding event %i on port %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*)* @sdl_do_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl_do_processing(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_41__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca [3 x i32*], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_40__, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %20, i64 0
  %22 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  store %struct.TYPE_41__* %22, %struct.TYPE_41__** %4, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  store %struct.TYPE_29__* %27, %struct.TYPE_29__** %5, align 8
  %28 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_38__*, %struct.TYPE_38__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_30__* @mmal_queue_get(i32 %46)
  store %struct.TYPE_30__* %47, %struct.TYPE_30__** %8, align 8
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %49 = icmp ne %struct.TYPE_30__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %315

51:                                               ; preds = %1
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %117

61:                                               ; preds = %51
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %63 = call %struct.TYPE_27__* @mmal_event_format_changed_get(%struct.TYPE_30__* %62)
  store %struct.TYPE_27__* %63, %struct.TYPE_27__** %15, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %65 = icmp ne %struct.TYPE_27__* %64, null
  br i1 %65, label %66, label %104

66:                                               ; preds = %61
  %67 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %68, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mmal_format_copy(%struct.TYPE_31__* %69, i32 %72)
  %74 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 0
  %78 = load i64 (%struct.TYPE_41__*)*, i64 (%struct.TYPE_41__*)** %77, align 8
  %79 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %80 = call i64 %78(%struct.TYPE_41__* %79)
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MMAL_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %66
  %89 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %90 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_41__* %89)
  %91 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @mmal_event_error_send(i32 %93, i64 %96)
  %98 = load i64, i64* @MMAL_SUCCESS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %88
  br label %103

103:                                              ; preds = %102, %66
  br label %111

104:                                              ; preds = %61
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %110 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %108, %struct.TYPE_41__* %109)
  br label %111

111:                                              ; preds = %104, %103
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %116 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_41__* %114, %struct.TYPE_30__* %115)
  store i32 1, i32* %2, align 4
  br label %315

117:                                              ; preds = %51
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MMAL_SUCCESS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 1, i32* %2, align 4
  br label %315

124:                                              ; preds = %117
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  br label %301

130:                                              ; preds = %124
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_36__*, %struct.TYPE_36__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %10, align 8
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_36__*, %struct.TYPE_36__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %139, i64 %148
  %150 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  store i32* %149, i32** %150, align 16
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %153, i64 %162
  %164 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  store i32* %163, i32** %164, align 8
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %167, i64 %176
  %178 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  store i32* %177, i32** %178, align 16
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %180, align 8
  %182 = call i32 @SDL_LockYUVOverlay(%struct.TYPE_33__* %181)
  store i32 0, i32* %11, align 4
  br label %183

183:                                              ; preds = %241, %130
  %184 = load i32, i32* %11, align 4
  %185 = icmp ult i32 %184, 3
  br i1 %185, label %186, label %244

186:                                              ; preds = %183
  %187 = load i32, i32* %11, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 %188
  %190 = load i32*, i32** %189, align 8
  store i32* %190, i32** %16, align 8
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %193, i32 0, i32 1
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  store i32* %199, i32** %17, align 8
  %200 = load i32, i32* %11, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %207

202:                                              ; preds = %186
  %203 = load i32, i32* %6, align 4
  %204 = udiv i32 %203, 2
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %7, align 4
  %206 = udiv i32 %205, 2
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %202, %186
  store i32 0, i32* %12, align 4
  br label %208

208:                                              ; preds = %237, %207
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp ult i32 %209, %210
  br i1 %211, label %212, label %240

212:                                              ; preds = %208
  %213 = load i32*, i32** %17, align 8
  %214 = load i32*, i32** %16, align 8
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @memcpy(i32* %213, i32* %214, i32 %215)
  %217 = load i32*, i32** %10, align 8
  %218 = load i32, i32* %11, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %16, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %16, align 8
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %17, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %17, align 8
  br label %237

237:                                              ; preds = %212
  %238 = load i32, i32* %12, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %12, align 4
  br label %208

240:                                              ; preds = %208
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %11, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %11, align 4
  br label %183

244:                                              ; preds = %183
  %245 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_33__*, %struct.TYPE_33__** %246, align 8
  %248 = call i32 @SDL_UnlockYUVOverlay(%struct.TYPE_33__* %247)
  %249 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_31__*, %struct.TYPE_31__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_38__*, %struct.TYPE_38__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %6, align 4
  %257 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_38__*, %struct.TYPE_38__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %7, align 4
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 3
  store i32 %268, i32* %269, align 8
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 0
  store i32 %273, i32* %274, align 8
  %275 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = mul i32 %276, %277
  %279 = load i32, i32* %6, align 4
  %280 = udiv i32 %278, %279
  store i32 %280, i32* %7, align 4
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %7, align 4
  %290 = sub i32 %288, %289
  %291 = udiv i32 %290, 2
  %292 = zext i32 %291 to i64
  %293 = add nsw i64 %284, %292
  %294 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 2
  store i64 %293, i64* %294, align 8
  %295 = load i32, i32* %7, align 4
  %296 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 1
  store i32 %295, i32* %296, align 4
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_33__*, %struct.TYPE_33__** %298, align 8
  %300 = call i32 @SDL_DisplayYUVOverlay(%struct.TYPE_33__* %299, %struct.TYPE_40__* %14)
  br label %301

301:                                              ; preds = %244, %129
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 1
  store i64 0, i64* %303, align 8
  %304 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %304, i32 0, i32 2
  store i64 0, i64* %305, align 8
  %306 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %308 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_41__* %306, %struct.TYPE_30__* %307)
  %309 = load i32, i32* %13, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %301
  %312 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %313 = call i32 @mmal_event_eos_send(%struct.TYPE_41__* %312)
  br label %314

314:                                              ; preds = %311, %301
  store i32 1, i32* %2, align 4
  br label %315

315:                                              ; preds = %314, %123, %111, %50
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local %struct.TYPE_30__* @mmal_queue_get(i32) #1

declare dso_local %struct.TYPE_27__* @mmal_event_format_changed_get(%struct.TYPE_30__*) #1

declare dso_local i32 @mmal_format_copy(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i64 @mmal_event_error_send(i32, i64) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_41__*, %struct.TYPE_30__*) #1

declare dso_local i32 @SDL_LockYUVOverlay(%struct.TYPE_33__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SDL_UnlockYUVOverlay(%struct.TYPE_33__*) #1

declare dso_local i32 @SDL_DisplayYUVOverlay(%struct.TYPE_33__*, %struct.TYPE_40__*) #1

declare dso_local i32 @mmal_event_eos_send(%struct.TYPE_41__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
