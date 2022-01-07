; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_drm.c_drm_map_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_drm.c_drm_map_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32*, i32** }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32*, i8** }

@ENOMEM = common dso_local global i32 0, align 4
@AV_HWFRAME_MAP_READ = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@AV_HWFRAME_MAP_WRITE = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@AV_DRM_MAX_PLANES = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to map DRM object %d to memory: %d.\0A\00", align 1
@drm_unmap_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)* @drm_map_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_map_frame(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 4
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %10, align 8
  %25 = call %struct.TYPE_16__* @av_mallocz(i32 24)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %11, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %5, align 4
  br label %270

31:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @AV_HWFRAME_MAP_READ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @PROT_READ, align 4
  %38 = load i32, i32* %16, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @AV_HWFRAME_MAP_WRITE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @PROT_WRITE, align 4
  %47 = load i32, i32* %16, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @AV_DRM_MAX_PLANES, align 4
  %54 = icmp sle i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @av_assert0(i32 %55)
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %123, %49
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %126

63:                                               ; preds = %57
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @MAP_SHARED, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @mmap(i32* null, i32 %71, i32 %72, i32 %73, i32 %81, i32 0)
  store i8* %82, i8** %17, align 8
  %83 = load i8*, i8** %17, align 8
  %84 = load i8*, i8** @MAP_FAILED, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %63
  %87 = load i32, i32* @errno, align 4
  %88 = call i32 @AVERROR(i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @errno, align 4
  %100 = call i32 @av_log(i32* %89, i32 %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  br label %230

101:                                              ; preds = %63
  %102 = load i8*, i8** %17, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %102, i8** %108, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %101
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %57

126:                                              ; preds = %57
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %200, %126
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %203

136:                                              ; preds = %130
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i64 %141
  store %struct.TYPE_18__* %142, %struct.TYPE_18__** %18, align 8
  store i32 0, i32* %14, align 4
  br label %143

143:                                              ; preds = %196, %136
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %199

149:                                              ; preds = %143
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 2
  %152 = load i8**, i8*** %151, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i8*, i8** %152, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = bitcast i8* %162 to i32*
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %163, i64 %172
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 4
  %176 = load i32**, i32*** %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  store i32* %173, i32** %179, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %187, i32* %193, align 4
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %15, align 4
  br label %196

196:                                              ; preds = %149
  %197 = load i32, i32* %14, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %14, align 4
  br label %143

199:                                              ; preds = %143
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  br label %130

203:                                              ; preds = %130
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* @AV_DRM_MAX_PLANES, align 4
  %206 = icmp sle i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 @av_assert0(i32 %207)
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %225 = call i32 @ff_hwframe_map_create(i32 %221, %struct.TYPE_17__* %222, %struct.TYPE_17__* %223, i32* @drm_unmap_frame, %struct.TYPE_16__* %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %203
  br label %230

229:                                              ; preds = %203
  store i32 0, i32* %5, align 4
  br label %270

230:                                              ; preds = %228, %86
  store i32 0, i32* %13, align 4
  br label %231

231:                                              ; preds = %263, %230
  %232 = load i32, i32* %13, align 4
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %266

237:                                              ; preds = %231
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 2
  %240 = load i8**, i8*** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %262

246:                                              ; preds = %237
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 2
  %249 = load i8**, i8*** %248, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @munmap(i8* %253, i32 %260)
  br label %262

262:                                              ; preds = %246, %237
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %231

266:                                              ; preds = %231
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %268 = call i32 @av_free(%struct.TYPE_16__* %267)
  %269 = load i32, i32* %12, align 4
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %266, %229, %28
  %271 = load i32, i32* %5, align 4
  ret i32 %271
}

declare dso_local %struct.TYPE_16__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @ff_hwframe_map_create(i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
