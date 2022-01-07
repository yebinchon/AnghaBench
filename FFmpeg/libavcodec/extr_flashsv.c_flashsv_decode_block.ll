; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv.c_flashsv_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv.c_flashsv_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.FlashSVContext* }
%struct.FlashSVContext = type { i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_15__, i32*, i32, i64, %struct.TYPE_11__*, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32*, i64* }
%struct.TYPE_15__ = type { i32, i32, i32*, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { i64 }

@Z_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Inflate reset error: %d\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Zlib resync occurred\0A\00", align 1
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"decode_hybrid failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32, i32, i32, i32, i32, i32)* @flashsv_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashsv_decode_block(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.FlashSVContext*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.FlashSVContext*, %struct.FlashSVContext** %25, align 8
  store %struct.FlashSVContext* %26, %struct.FlashSVContext** %20, align 8
  %27 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %28 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %21, align 8
  %30 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %31 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %30, i32 0, i32 5
  %32 = call i32 @inflateReset(%struct.TYPE_15__* %31)
  store i32 %32, i32* %23, align 4
  %33 = load i32, i32* %23, align 4
  %34 = load i32, i32* @Z_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %9
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = load i32, i32* %23, align 4
  %40 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %37, i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %41, i32* %10, align 4
  br label %276

42:                                               ; preds = %9
  %43 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %44 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %49 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %48, i32 0, i32 12
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %47, %42
  %53 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %54 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %55 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %54, i32 0, i32 9
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %63 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %62, i32 0, i32 9
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @flashsv2_prime(%struct.FlashSVContext* %53, i64 %61, i32 %69)
  store i32 %70, i32* %23, align 4
  %71 = load i32, i32* %23, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %52
  %74 = load i32, i32* %23, align 4
  store i32 %74, i32* %10, align 4
  br label %276

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @get_bits_count(i32* %80)
  %82 = sdiv i32 %81, 8
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %79, %83
  %85 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %86 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  store i64 %84, i64* %87, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %90 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %93 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %96 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  store i32* %94, i32** %97, align 8
  %98 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %99 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %100, 3
  %102 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %103 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %106 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %105, i32 0, i32 5
  %107 = load i32, i32* @Z_FINISH, align 4
  %108 = call i32 @inflate(%struct.TYPE_15__* %106, i32 %107)
  store i32 %108, i32* %23, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* @Z_DATA_ERROR, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %76
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %114 = load i32, i32* @AV_LOG_ERROR, align 4
  %115 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %113, i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %117 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %116, i32 0, i32 5
  %118 = call i32 @inflateSync(%struct.TYPE_15__* %117)
  %119 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %120 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %119, i32 0, i32 5
  %121 = load i32, i32* @Z_FINISH, align 4
  %122 = call i32 @inflate(%struct.TYPE_15__* %120, i32 %121)
  store i32 %122, i32* %23, align 4
  br label %123

123:                                              ; preds = %112, %76
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* @Z_OK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* @Z_STREAM_END, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131, %127, %123
  %133 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %134 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %133, i32 0, i32 11
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %132
  %138 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %139 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %138, i32 0, i32 10
  %140 = load i64, i64* %139, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = call i32 @get_bits_count(i32* %141)
  %143 = sdiv i32 %142, 8
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %140, %144
  %146 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %147 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %146, i32 0, i32 9
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  store i64 %145, i64* %152, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %155 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %154, i32 0, i32 9
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  store i32 %153, i32* %160, align 8
  br label %161

161:                                              ; preds = %137, %132
  %162 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %163 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %162, i32 0, i32 8
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %18, align 4
  %169 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %170 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %222, label %173

173:                                              ; preds = %161
  store i32 1, i32* %22, align 4
  br label %174

174:                                              ; preds = %218, %173
  %175 = load i32, i32* %22, align 4
  %176 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %177 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %175, %178
  br i1 %179, label %180, label %221

180:                                              ; preds = %174
  %181 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %182 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %181, i32 0, i32 4
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %17, align 4
  %189 = mul nsw i32 %188, 3
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %187, %190
  %192 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %193 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %18, align 4
  %196 = sub nsw i32 %194, %195
  %197 = load i32, i32* %22, align 4
  %198 = sub nsw i32 %196, %197
  %199 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %200 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %199, i32 0, i32 4
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %198, %205
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %191, %207
  %209 = load i32*, i32** %21, align 8
  %210 = load i32, i32* %15, align 4
  %211 = mul nsw i32 %210, 3
  %212 = call i32 @memcpy(i64 %208, i32* %209, i32 %211)
  %213 = load i32, i32* %15, align 4
  %214 = mul nsw i32 %213, 3
  %215 = load i32*, i32** %21, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %21, align 8
  br label %218

218:                                              ; preds = %180
  %219 = load i32, i32* %22, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %22, align 4
  br label %174

221:                                              ; preds = %174
  br label %271

222:                                              ; preds = %161
  %223 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %224 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %223, i32 0, i32 6
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %227 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %231 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %230, i32 0, i32 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %238 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %18, align 4
  %241 = add nsw i32 %240, 1
  %242 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %243 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %241, %244
  %246 = sub nsw i32 %239, %245
  %247 = load i32, i32* %17, align 4
  %248 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %249 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %15, align 4
  %252 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %253 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %252, i32 0, i32 4
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.FlashSVContext*, %struct.FlashSVContext** %20, align 8
  %260 = getelementptr inbounds %struct.FlashSVContext, %struct.FlashSVContext* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @decode_hybrid(i32* %225, i32* %229, i64 %236, i32 %246, i32 %247, i32 %250, i32 %251, i32 %258, i32 %261)
  store i32 %262, i32* %23, align 4
  %263 = load i32, i32* %23, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %222
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %267 = load i32, i32* @AV_LOG_ERROR, align 4
  %268 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %266, i32 %267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %269 = load i32, i32* %23, align 4
  store i32 %269, i32* %10, align 4
  br label %276

270:                                              ; preds = %222
  br label %271

271:                                              ; preds = %270, %221
  %272 = load i32*, i32** %13, align 8
  %273 = load i32, i32* %14, align 4
  %274 = mul nsw i32 8, %273
  %275 = call i32 @skip_bits_long(i32* %272, i32 %274)
  store i32 0, i32* %10, align 4
  br label %276

276:                                              ; preds = %271, %265, %73, %36
  %277 = load i32, i32* %10, align 4
  ret i32 %277
}

declare dso_local i32 @inflateReset(%struct.TYPE_15__*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @flashsv2_prime(%struct.FlashSVContext*, i64, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @inflate(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @inflateSync(%struct.TYPE_15__*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @decode_hybrid(i32*, i32*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
