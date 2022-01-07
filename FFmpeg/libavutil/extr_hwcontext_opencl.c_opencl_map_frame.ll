; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_map_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_map_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64*, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64* }

@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4
@AV_HWFRAME_MAP_OVERWRITE = common dso_local global i32 0, align 4
@AV_HWFRAME_MAP_READ = common dso_local global i32 0, align 4
@CL_MAP_WRITE_INVALIDATE_REGION = common dso_local global i32 0, align 4
@CL_MAP_READ = common dso_local global i32 0, align 4
@AV_HWFRAME_MAP_WRITE = common dso_local global i32 0, align 4
@CL_MAP_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CL_FALSE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to map OpenCL image plane %d: %d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Map plane %d (%p -> %p).\0A\00", align 1
@opencl_unmap_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)* @opencl_map_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opencl_map_frame(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca [3 x i64], align 16
  %17 = alloca [3 x i64], align 16
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %10, align 8
  %29 = bitcast [3 x i64]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 24, i1 false)
  %30 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %19, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @av_assert0(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @AV_HWFRAME_MAP_OVERWRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @AV_HWFRAME_MAP_READ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @CL_MAP_WRITE_INVALIDATE_REGION, align 4
  store i32 %53, i32* %11, align 4
  br label %73

54:                                               ; preds = %47, %4
  store i32 0, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @AV_HWFRAME_MAP_READ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @CL_MAP_READ, align 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @AV_HWFRAME_MAP_WRITE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @CL_MAP_WRITE, align 4
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %52
  %74 = call %struct.TYPE_20__* @av_mallocz(i32 8)
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %15, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %76 = icmp ne %struct.TYPE_20__* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %267

80:                                               ; preds = %73
  store i32 0, i32* %22, align 4
  br label %81

81:                                               ; preds = %184, %80
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %22, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @opencl_get_plane_format(i64 %84, i32 %85, i32 %88, i32 %91, i32* %12, %struct.TYPE_19__* %13)
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* @ENOENT, align 4
  %95 = call i32 @AVERROR(i32 %94)
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  br label %187

98:                                               ; preds = %81
  %99 = load i32, i32* %21, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %216

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  store i64 %104, i64* %105, align 16
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 1
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 2
  store i64 1, i64* %109, align 16
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %22, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* @CL_FALSE, align 4
  %122 = load i32, i32* %11, align 4
  %123 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %124 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  %125 = load i32, i32* %22, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %33, i64 %126
  %128 = call i64 @clEnqueueMapImage(i32 %112, i32 %120, i32 %121, i32 %122, i64* %123, i64* %124, i64* %18, i32* null, i32 0, i32* null, i32* %127, i32* %14)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %22, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  store i64 %128, i64* %134, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %22, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %102
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %145 = load i32, i32* @AV_LOG_ERROR, align 4
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = call i32 (%struct.TYPE_22__*, i32, i8*, i32, i64, ...) @av_log(%struct.TYPE_22__* %144, i32 %145, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %146, i64 %148)
  %150 = load i32, i32* @EIO, align 4
  %151 = call i32 @AVERROR(i32 %150)
  store i32 %151, i32* %21, align 4
  br label %216

152:                                              ; preds = %102
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %22, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %22, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  store i64 %159, i64* %165, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %167 = load i32, i32* @AV_LOG_DEBUG, align 4
  %168 = load i32, i32* %22, align 4
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %22, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call i32 (%struct.TYPE_22__*, i32, i8*, i32, i64, ...) @av_log(%struct.TYPE_22__* %166, i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %168, i64 %175, i64 %182)
  br label %184

184:                                              ; preds = %152
  %185 = load i32, i32* %22, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %22, align 4
  br label %81

187:                                              ; preds = %97
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %189 = load i32, i32* %22, align 4
  %190 = call i32 @opencl_wait_events(%struct.TYPE_22__* %188, i32* %33, i32 %189)
  store i32 %190, i32* %21, align 4
  %191 = load i32, i32* %21, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %216

194:                                              ; preds = %187
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %201 = call i32 @ff_hwframe_map_create(i32 %197, %struct.TYPE_23__* %198, %struct.TYPE_23__* %199, i32* @opencl_unmap_frame, %struct.TYPE_20__* %200)
  store i32 %201, i32* %21, align 4
  %202 = load i32, i32* %21, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %194
  br label %216

205:                                              ; preds = %194
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %267

216:                                              ; preds = %204, %193, %143, %101
  store i32 0, i32* %22, align 4
  br label %217

217:                                              ; preds = %254, %216
  %218 = load i32, i32* %22, align 4
  %219 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %257

221:                                              ; preds = %217
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = load i32, i32* %22, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %221
  br label %257

231:                                              ; preds = %221
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 1
  %237 = load i64*, i64** %236, align 8
  %238 = load i32, i32* %22, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = trunc i64 %241 to i32
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %22, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* %22, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %33, i64 %251
  %253 = call i32 @clEnqueueUnmapMemObject(i32 %234, i32 %242, i64 %249, i32 0, i32* null, i32* %252)
  br label %254

254:                                              ; preds = %231
  %255 = load i32, i32* %22, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %22, align 4
  br label %217

257:                                              ; preds = %230, %217
  %258 = load i32, i32* %22, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %262 = load i32, i32* %22, align 4
  %263 = call i32 @opencl_wait_events(%struct.TYPE_22__* %261, i32* %33, i32 %262)
  br label %264

264:                                              ; preds = %260, %257
  %265 = call i32 @av_freep(%struct.TYPE_20__** %15)
  %266 = load i32, i32* %21, align 4
  store i32 %266, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %267

267:                                              ; preds = %264, %205, %77
  %268 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %268)
  %269 = load i32, i32* %5, align 4
  ret i32 %269
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @av_assert0(i32) #3

declare dso_local %struct.TYPE_20__* @av_mallocz(i32) #3

declare dso_local i32 @AVERROR(i32) #3

declare dso_local i32 @opencl_get_plane_format(i64, i32, i32, i32, i32*, %struct.TYPE_19__*) #3

declare dso_local i64 @clEnqueueMapImage(i32, i32, i32, i32, i64*, i64*, i64*, i32*, i32, i32*, i32*, i32*) #3

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*, i32, i64, ...) #3

declare dso_local i32 @opencl_wait_events(%struct.TYPE_22__*, i32*, i32) #3

declare dso_local i32 @ff_hwframe_map_create(i32, %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, %struct.TYPE_20__*) #3

declare dso_local i32 @clEnqueueUnmapMemObject(i32, i32, i64, i32, i32*, i32*) #3

declare dso_local i32 @av_freep(%struct.TYPE_20__**) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
