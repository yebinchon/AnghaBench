; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_exss.c_ff_dca_exss_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_exss.c_ff_dca_exss_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid EXSS header checksum\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Packet too short for EXSS frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%d audio presentations\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%d audio assets\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"EXSS asset out of bounds\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Invalid extension size in EXSS asset descriptor\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Read past end of EXSS header\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dca_exss_parse(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 9
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @init_get_bits8(i32* %16, i32* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %393

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 9
  %26 = call i32 @skip_bits_long(i32* %25, i32 32)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 9
  %29 = call i32 @skip_bits(i32* %28, i32 8)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 9
  %32 = call i32 @get_bits(i32* %31, i32 2)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 9
  %37 = call i32 @get_bits1(i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 9
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 4, %40
  %42 = add nsw i32 8, %41
  %43 = call i32 @get_bits(i32* %39, i32 %42)
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %23
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 9
  %55 = load i32, i32* %12, align 4
  %56 = mul nsw i32 %55, 8
  %57 = call i64 @ff_dca_check_crc(i64 %52, i32* %54, i32 40, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 @av_log(i64 %62, i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %4, align 4
  br label %393

66:                                               ; preds = %49, %23
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 4, %67
  %69 = add nsw i32 16, %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 9
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @get_bits(i32* %73, i32 %76)
  %78 = add nsw i32 %77, 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %66
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 @av_log(i64 %94, i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %98, i32* %4, align 4
  br label %393

99:                                               ; preds = %66
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 9
  %102 = call i32 @get_bits1(i32* %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = icmp ne i32 %102, 0
  br i1 %105, label %106, label %259

106:                                              ; preds = %99
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 9
  %109 = call i32 @skip_bits(i32* %108, i32 2)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 9
  %112 = call i32 @skip_bits(i32* %111, i32 3)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 9
  %115 = call i32 @get_bits1(i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 9
  %120 = call i32 @skip_bits_long(i32* %119, i32 36)
  br label %121

121:                                              ; preds = %117, %106
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 9
  %124 = call i32 @get_bits(i32* %123, i32 3)
  %125 = add nsw i32 %124, 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %147

132:                                              ; preds = %121
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 8
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @avpriv_request_sample(i64 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %137, %132
  %146 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %146, i32* %4, align 4
  br label %393

147:                                              ; preds = %121
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 9
  %150 = call i32 @get_bits(i32* %149, i32 3)
  %151 = add nsw i32 %150, 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %173

158:                                              ; preds = %147
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 8
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @avpriv_request_sample(i64 %166, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %163, %158
  %172 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %172, i32* %4, align 4
  br label %393

173:                                              ; preds = %147
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %191, %173
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %174
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 9
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, 1
  %187 = call i32 @get_bits(i32* %182, i32 %186)
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %189
  store i32 %187, i32* %190, align 4
  br label %191

191:                                              ; preds = %180
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %174

194:                                              ; preds = %174
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %211, %194
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %195
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 9
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @av_popcount(i32 %207)
  %209 = mul nsw i32 %208, 8
  %210 = call i32 @skip_bits_long(i32* %203, i32 %209)
  br label %211

211:                                              ; preds = %201
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  br label %195

214:                                              ; preds = %195
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 9
  %217 = call i32 @get_bits1(i32* %216)
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 6
  store i32 %217, i32* %219, align 8
  %220 = icmp ne i32 %217, 0
  br i1 %220, label %221, label %258

221:                                              ; preds = %214
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 9
  %224 = call i32 @skip_bits(i32* %223, i32 2)
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 9
  %227 = call i32 @get_bits(i32* %226, i32 2)
  %228 = add nsw i32 %227, 1
  %229 = shl i32 %228, 2
  store i32 %229, i32* %14, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 9
  %232 = call i32 @get_bits(i32* %231, i32 2)
  %233 = add nsw i32 %232, 1
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 7
  store i32 %233, i32* %235, align 4
  store i32 0, i32* %8, align 4
  br label %236

236:                                              ; preds = %254, %221
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %257

242:                                              ; preds = %236
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 9
  %245 = load i32, i32* %14, align 4
  %246 = call i32 @get_bits(i32* %244, i32 %245)
  %247 = call i32 @ff_dca_count_chs_for_mask(i32 %246)
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 11
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 %247, i32* %253, align 4
  br label %254

254:                                              ; preds = %242
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %236

257:                                              ; preds = %236
  br label %258

258:                                              ; preds = %257, %214
  br label %264

259:                                              ; preds = %99
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 4
  store i32 1, i32* %261, align 8
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 5
  store i32 1, i32* %263, align 4
  br label %264

264:                                              ; preds = %259, %258
  %265 = load i32, i32* %12, align 4
  store i32 %265, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %266

266:                                              ; preds = %324, %264
  %267 = load i32, i32* %8, align 4
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = icmp slt i32 %267, %270
  br i1 %271, label %272, label %327

272:                                              ; preds = %266
  %273 = load i32, i32* %10, align 4
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 10
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  store i32 %273, i32* %280, align 4
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 9
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @get_bits(i32* %282, i32 %285)
  %287 = add nsw i32 %286, 1
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 10
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 1
  store i32 %287, i32* %294, align 4
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 10
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %10, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %10, align 4
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = icmp sgt i32 %305, %308
  br i1 %309, label %310, label %323

310:                                              ; preds = %272
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 8
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 8
  %318 = load i64, i64* %317, align 8
  %319 = load i32, i32* @AV_LOG_ERROR, align 4
  %320 = call i32 @av_log(i64 %318, i32 %319, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %321

321:                                              ; preds = %315, %310
  %322 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %322, i32* %4, align 4
  br label %393

323:                                              ; preds = %272
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %8, align 4
  br label %266

327:                                              ; preds = %266
  store i32 0, i32* %8, align 4
  br label %328

328:                                              ; preds = %369, %327
  %329 = load i32, i32* %8, align 4
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 4
  %333 = icmp slt i32 %329, %332
  br i1 %333, label %334, label %372

334:                                              ; preds = %328
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 10
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i64 %340
  %342 = call i32 @parse_descriptor(%struct.TYPE_6__* %335, %struct.TYPE_7__* %341)
  store i32 %342, i32* %9, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %334
  %345 = load i32, i32* %9, align 4
  store i32 %345, i32* %4, align 4
  br label %393

346:                                              ; preds = %334
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 10
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %348, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i64 %351
  %353 = call i32 @set_exss_offsets(%struct.TYPE_7__* %352)
  store i32 %353, i32* %9, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %368

355:                                              ; preds = %346
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 8
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %355
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 8
  %363 = load i64, i64* %362, align 8
  %364 = load i32, i32* @AV_LOG_ERROR, align 4
  %365 = call i32 @av_log(i64 %363, i32 %364, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %366

366:                                              ; preds = %360, %355
  %367 = load i32, i32* %9, align 4
  store i32 %367, i32* %4, align 4
  br label %393

368:                                              ; preds = %346
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %8, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %8, align 4
  br label %328

372:                                              ; preds = %328
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 9
  %375 = load i32, i32* %12, align 4
  %376 = mul nsw i32 %375, 8
  %377 = call i64 @ff_dca_seek_bits(i32* %374, i32 %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %392

379:                                              ; preds = %372
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 8
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %390

384:                                              ; preds = %379
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 8
  %387 = load i64, i64* %386, align 8
  %388 = load i32, i32* @AV_LOG_ERROR, align 4
  %389 = call i32 @av_log(i64 %387, i32 %388, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %390

390:                                              ; preds = %384, %379
  %391 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %391, i32* %4, align 4
  br label %393

392:                                              ; preds = %372
  store i32 0, i32* %4, align 4
  br label %393

393:                                              ; preds = %392, %390, %366, %344, %321, %171, %145, %97, %59, %21
  %394 = load i32, i32* %4, align 4
  ret i32 %394
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i64 @ff_dca_check_crc(i64, i32*, i32, i32) #1

declare dso_local i32 @av_log(i64, i32, i8*) #1

declare dso_local i32 @avpriv_request_sample(i64, i8*, i32) #1

declare dso_local i32 @av_popcount(i32) #1

declare dso_local i32 @ff_dca_count_chs_for_mask(i32) #1

declare dso_local i32 @parse_descriptor(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @set_exss_offsets(%struct.TYPE_7__*) #1

declare dso_local i64 @ff_dca_seek_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
