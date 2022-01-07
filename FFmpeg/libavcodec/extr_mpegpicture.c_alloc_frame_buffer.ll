; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegpicture.c_alloc_frame_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegpicture.c_alloc_frame_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_20__*, i64, i64, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_18__*, %struct.TYPE_19__*, i64, i64, %struct.TYPE_24__ }
%struct.TYPE_18__ = type { i32*, i32, i64, i64, i64*, i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32 }

@AV_CODEC_ID_WMV3IMAGE = common dso_local global i64 0, align 8
@AV_CODEC_ID_VC1IMAGE = common dso_local global i64 0, align 8
@AV_CODEC_ID_MSS2 = common dso_local global i64 0, align 8
@EDGE_WIDTH = common dso_local global i32 0, align 4
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"get_buffer() failed (%d %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"alloc_frame_buffer() failed (hwaccel private data allocation)\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"get_buffer() failed (stride changed: linesize=%d/%d uvlinesize=%d/%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"get_buffer() failed (uv stride mismatch)\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"get_buffer() failed to allocate context scratch buffers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, %struct.TYPE_21__*, i32, i32, i32, i32)* @alloc_frame_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_frame_buffer(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32* %2, %struct.TYPE_21__* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @av_codec_is_encoder(i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %32, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AV_CODEC_ID_WMV3IMAGE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %90

38:                                               ; preds = %8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AV_CODEC_ID_VC1IMAGE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %38
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AV_CODEC_ID_MSS2, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %44
  %51 = load i32, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @EDGE_WIDTH, align 4
  %58 = mul nsw i32 2, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  store i64 %60, i64* %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @EDGE_WIDTH, align 4
  %69 = mul nsw i32 2, %68
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  store i64 %71, i64* %75, align 8
  br label %76

76:                                               ; preds = %53, %50
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %86 ]
  %89 = call i32 @ff_thread_get_buffer(%struct.TYPE_23__* %77, %struct.TYPE_24__* %79, i32 %88)
  store i32 %89, i32* %19, align 4
  br label %117

90:                                               ; preds = %44, %38, %8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 3
  store i64 %93, i64* %97, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  store i64 %100, i64* %104, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  store i32 %107, i32* %111, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = call i32 @avcodec_default_get_buffer2(%struct.TYPE_23__* %112, %struct.TYPE_18__* %115, i32 0)
  store i32 %116, i32* %19, align 4
  br label %117

117:                                              ; preds = %90, %87
  %118 = load i32, i32* %19, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %120, %117
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = load i32, i32* %19, align 4
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 4
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %130, i32 %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %132, i64 %139)
  store i32 -1, i32* %9, align 4
  br label %368

141:                                              ; preds = %120
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %216

144:                                              ; preds = %141
  store i32 0, i32* %21, align 4
  br label %145

145:                                              ; preds = %198, %144
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 4
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %21, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %201

156:                                              ; preds = %145
  %157 = load i32, i32* @EDGE_WIDTH, align 4
  %158 = load i32, i32* %21, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* %15, align 4
  br label %163

162:                                              ; preds = %156
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi i32 [ %161, %160 ], [ 0, %162 ]
  %165 = ashr i32 %157, %164
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %21, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %165, %174
  %176 = load i32, i32* @EDGE_WIDTH, align 4
  %177 = load i32, i32* %21, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %163
  %180 = load i32, i32* %14, align 4
  br label %182

181:                                              ; preds = %163
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i32 [ %180, %179 ], [ 0, %181 ]
  %184 = ashr i32 %176, %183
  %185 = add nsw i32 %175, %184
  store i32 %185, i32* %22, align 4
  %186 = load i32, i32* %22, align 4
  %187 = sext i32 %186 to i64
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 4
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %21, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, %187
  store i64 %197, i64* %195, align 8
  br label %198

198:                                              ; preds = %182
  %199 = load i32, i32* %21, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %21, align 4
  br label %145

201:                                              ; preds = %145
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 3
  store i64 %204, i64* %208, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  store i64 %211, i64* %215, align 8
  br label %216

216:                                              ; preds = %201, %141
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = icmp ne %struct.TYPE_20__* %219, null
  br i1 %220, label %221, label %261

221:                                              ; preds = %216
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  %226 = xor i1 %225, true
  %227 = zext i1 %226 to i32
  %228 = call i32 @assert(i32 %227)
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %260

235:                                              ; preds = %221
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call %struct.TYPE_19__* @av_buffer_allocz(i64 %240)
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  store %struct.TYPE_19__* %241, %struct.TYPE_19__** %243, align 8
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %245, align 8
  %247 = icmp ne %struct.TYPE_19__* %246, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %235
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %250 = load i32, i32* @AV_LOG_ERROR, align 4
  %251 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %249, i32 %250, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %368

252:                                              ; preds = %235
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 2
  store i64 %257, i64* %259, align 8
  br label %260

260:                                              ; preds = %252, %221
  br label %261

261:                                              ; preds = %260, %216
  %262 = load i32, i32* %16, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %261
  %265 = load i32, i32* %16, align 4
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %265, %272
  br i1 %273, label %287, label %274

274:                                              ; preds = %264, %261
  %275 = load i32, i32* %17, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %310

277:                                              ; preds = %274
  %278 = load i32, i32* %17, align 4
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %278, %285
  br i1 %286, label %287, label %310

287:                                              ; preds = %277, %264
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %289 = load i32, i32* @AV_LOG_ERROR, align 4
  %290 = load i32, i32* %16, align 4
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %17, align 4
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %288, i32 %289, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %290, i32 %297, i32 %298, i32 %305)
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %309 = call i32 @ff_mpeg_unref_picture(%struct.TYPE_23__* %307, %struct.TYPE_22__* %308)
  store i32 -1, i32* %9, align 4
  br label %368

310:                                              ; preds = %277, %274
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @av_pix_fmt_count_planes(i32 %315)
  %317 = icmp sgt i32 %316, 2
  br i1 %317, label %318, label %341

318:                                              ; preds = %310
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 0
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 2
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %325, %332
  br i1 %333, label %334, label %341

334:                                              ; preds = %318
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %336 = load i32, i32* @AV_LOG_ERROR, align 4
  %337 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %335, i32 %336, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %340 = call i32 @ff_mpeg_unref_picture(%struct.TYPE_23__* %338, %struct.TYPE_22__* %339)
  store i32 -1, i32* %9, align 4
  br label %368

341:                                              ; preds = %318, %310
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %367, label %346

346:                                              ; preds = %341
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %348 = load i32*, i32** %12, align 8
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 0
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 0
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @ff_mpeg_framesize_alloc(%struct.TYPE_23__* %347, i32* %348, %struct.TYPE_21__* %349, i32 %356)
  store i32 %357, i32* %20, align 4
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %359, label %367

359:                                              ; preds = %346
  %360 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %361 = load i32, i32* @AV_LOG_ERROR, align 4
  %362 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %360, i32 %361, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %365 = call i32 @ff_mpeg_unref_picture(%struct.TYPE_23__* %363, %struct.TYPE_22__* %364)
  %366 = load i32, i32* %20, align 4
  store i32 %366, i32* %9, align 4
  br label %368

367:                                              ; preds = %346, %341
  store i32 0, i32* %9, align 4
  br label %368

368:                                              ; preds = %367, %359, %334, %287, %248, %129
  %369 = load i32, i32* %9, align 4
  ret i32 %369
}

declare dso_local i32 @av_codec_is_encoder(i32) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @avcodec_default_get_buffer2(%struct.TYPE_23__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_19__* @av_buffer_allocz(i64) #1

declare dso_local i32 @ff_mpeg_unref_picture(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i32 @ff_mpeg_framesize_alloc(%struct.TYPE_23__*, i32*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
