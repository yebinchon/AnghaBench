; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_vp9.c_cbs_vp9_assemble_fragment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_vp9.c_cbs_vp9_assemble_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i32*, %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_14__ = type { i64, i32*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Too many frames to make superframe: %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VP9_SUPERFRAME_MARKER = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to write superframe index.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @cbs_vp9_assemble_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_vp9_assemble_fragment(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %50

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i64 0
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %7, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_17__* @av_buffer_ref(i32 %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 3
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = icmp ne %struct.TYPE_17__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %280

39:                                               ; preds = %21
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %279

50:                                               ; preds = %2
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 8
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i32, i8*, ...) @av_log(i32 %58, i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %3, align 4
  br label %280

66:                                               ; preds = %50
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %94, %66
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = load i64, i64* %13, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %74, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %73
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %13, align 8
  br label %93

93:                                               ; preds = %84, %73
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %67

97:                                               ; preds = %67
  %98 = load i64, i64* %13, align 8
  %99 = icmp ult i64 %98, 2
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 1, i32* %16, align 4
  br label %106

101:                                              ; preds = %97
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @av_log2(i64 %102)
  %104 = sdiv i32 %103, 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %101, %100
  %107 = load i32, i32* %16, align 4
  %108 = icmp sle i32 %107, 4
  %109 = zext i1 %108 to i32
  %110 = call i32 @av_assert0(i32 %109)
  %111 = load i32, i32* @VP9_SUPERFRAME_MARKER, align 4
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sub nsw i32 %113, 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 %114, i32* %115, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  store i64 2, i64* %12, align 8
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %155, %106
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %121
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %129, %137
  %139 = load i64, i64* %12, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %12, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %149, i32* %154, align 4
  br label %155

155:                                              ; preds = %127
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %121

158:                                              ; preds = %121
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %161 = add i64 %159, %160
  %162 = call %struct.TYPE_17__* @av_buffer_alloc(i64 %161)
  store %struct.TYPE_17__* %162, %struct.TYPE_17__** %10, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %164 = icmp ne %struct.TYPE_17__* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = call i32 @AVERROR(i32 %166)
  store i32 %167, i32* %3, align 4
  br label %280

168:                                              ; preds = %158
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  store i32* %171, i32** %11, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = load i64, i64* %12, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %176 = call i32 @memset(i32* %174, i32 0, i64 %175)
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %177

177:                                              ; preds = %228, %168
  %178 = load i32, i32* %15, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %231

183:                                              ; preds = %177
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* %14, align 8
  %186 = sub i64 %184, %185
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ugt i64 %186, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @av_assert0(i32 %196)
  %198 = load i32*, i32** %11, align 8
  %199 = load i64, i64* %14, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 4
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @memcpy(i32* %200, i32* %208, i64 %216)
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %14, align 8
  %227 = add i64 %226, %225
  store i64 %227, i64* %14, align 8
  br label %228

228:                                              ; preds = %183
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  br label %177

231:                                              ; preds = %177
  %232 = load i64, i64* %12, align 8
  %233 = load i64, i64* %14, align 8
  %234 = sub i64 %232, %233
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %16, align 4
  %239 = mul nsw i32 %237, %238
  %240 = add nsw i32 2, %239
  %241 = sext i32 %240 to i64
  %242 = icmp eq i64 %234, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @av_assert0(i32 %243)
  %245 = load i32*, i32** %11, align 8
  %246 = load i64, i64* %14, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i64, i64* %12, align 8
  %249 = load i64, i64* %14, align 8
  %250 = sub i64 %248, %249
  %251 = call i32 @init_put_bits(i32* %9, i32* %247, i64 %250)
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %253 = call i32 @cbs_vp9_write_superframe_index(%struct.TYPE_16__* %252, i32* %9, %struct.TYPE_13__* %8)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %231
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @AV_LOG_ERROR, align 4
  %261 = call i32 (i32, i32, i8*, ...) @av_log(i32 %259, i32 %260, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %262 = call i32 @av_buffer_unref(%struct.TYPE_17__** %10)
  %263 = load i32, i32* %6, align 4
  store i32 %263, i32* %3, align 4
  br label %280

264:                                              ; preds = %231
  %265 = call i64 @put_bits_left(i32* %9)
  %266 = icmp eq i64 %265, 0
  %267 = zext i1 %266 to i32
  %268 = call i32 @av_assert0(i32 %267)
  %269 = call i32 @flush_put_bits(i32* %9)
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 3
  store %struct.TYPE_17__* %270, %struct.TYPE_17__** %272, align 8
  %273 = load i32*, i32** %11, align 8
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 2
  store i32* %273, i32** %275, align 8
  %276 = load i64, i64* %12, align 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  store i64 %276, i64* %278, align 8
  br label %279

279:                                              ; preds = %264, %39
  store i32 0, i32* %3, align 4
  br label %280

280:                                              ; preds = %279, %256, %165, %55, %36
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local %struct.TYPE_17__* @av_buffer_ref(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @av_log2(i64) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local %struct.TYPE_17__* @av_buffer_alloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i64) #1

declare dso_local i32 @cbs_vp9_write_superframe_index(%struct.TYPE_16__*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_17__**) #1

declare dso_local i64 @put_bits_left(i32*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
